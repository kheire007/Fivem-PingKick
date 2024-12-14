-- Charger la configuration
local Config = Config or {}

-- Fonction pour convertir le temps en minutes et secondes
local function formatTime(milliseconds)
    local totalSeconds = math.floor(milliseconds / 1000)
    local minutes = math.floor(totalSeconds / 60)
    local seconds = totalSeconds % 60
    return minutes, seconds
end

-- Fonction pour obtenir un message dans la langue du joueur ou par défaut
local function getLocalizedMessage(playerId, key, ...)
    local language = Config.defaultLanguage -- Par défaut
    -- Si vous avez un système pour récupérer la langue du joueur, remplacez la ligne suivante :
    -- local language = GetPlayerLanguage(playerId)

    -- Retourner le message traduit ou par défaut
    if Config.Messages[language] and Config.Messages[language][key] then
        return Config.Messages[language][key]:format(...)
    else
        return Config.Messages[Config.defaultLanguage][key]:format(...)
    end
end

-- Vérifier si un joueur est dans la liste blanche
local function isPlayerWhitelisted(playerId)
    local identifiers = GetPlayerIdentifiers(playerId)
    for _, identifier in ipairs(identifiers) do
        for _, whitelistedId in ipairs(Config.Whitelist) do
            if identifier == whitelistedId then
                return true
            end
        end
    end
    return false
end

-- Vérifier si un joueur est actif
local function isPlayerActive(playerId)
    local playerPing = GetPlayerPing(playerId)
    return playerPing > 0 -- Un ping valide indique que le joueur est connecté
end

-- Fonction de vérification du ping
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.checkInterval) -- Intervalle entre chaque vérification

        for _, playerId in ipairs(GetPlayers()) do
            -- Exclure les joueurs dans la liste blanche
            if not isPlayerWhitelisted(playerId) and isPlayerActive(playerId) then
                local ping = GetPlayerPing(playerId)

                if ping > Config.maxPing then
                    -- Calculer le temps en minutes pour le message initial
                    local waitTimeInMinutes = formatTime(Config.waitTimeBeforeKick)
                    local warningMessage = getLocalizedMessage(playerId, "warningMessage", ping, waitTimeInMinutes)

                    -- Envoyer un message d'avertissement au joueur
                    TriggerClientEvent('chat:addMessage', playerId, {
                        args = {"[SYSTEM]", warningMessage}
                    })

                    local remainingTime = Config.waitTimeBeforeKick
                    while remainingTime > 0 do
                        Citizen.Wait(Config.reminderInterval)

                        remainingTime = remainingTime - Config.reminderInterval

                        -- Calculer les minutes et secondes restantes
                        local minutes, seconds = formatTime(remainingTime)
                        local reminderMessage = getLocalizedMessage(playerId, "reminderMessage", ping, minutes, seconds)

                        -- Envoyer un rappel au joueur
                        TriggerClientEvent('chat:addMessage', playerId, {
                            args = {"[SYSTEM]", reminderMessage}
                        })
                    end

                    -- Re-vérifier le ping après le délai
                    local newPing = GetPlayerPing(playerId)
                    if newPing > Config.maxPing then
                        local kickMessage = getLocalizedMessage(playerId, "kickMessage", Config.maxPing)
                        local logMessage = getLocalizedMessage(playerId, "logMessage", GetPlayerName(playerId), playerId, newPing)

                        -- Kick le joueur
                        DropPlayer(playerId, kickMessage)
                        print(logMessage)
                    end
                end
            end
        end
    end
end)

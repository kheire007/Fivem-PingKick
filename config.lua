-- Configuration
Config = {}

-- Limite de ping en millisecondes
Config.maxPing = 30 -- Si le ping dépasse cette valeur, le joueur sera averti.

-- Intervalle de vérification du ping
Config.checkInterval = 30 * 1000 -- Temps entre chaque vérification (en ms)

-- Temps d'attente avant le kick
Config.waitTimeBeforeKick = 10 * 60 * 1000 -- Temps d'attente avant de kicker après l'avertissement (10 minutes, en ms)

-- Intervalle pour les rappels de ping
Config.reminderInterval = 60 * 1000 -- Temps entre chaque rappel (30 secondes, en ms)

-- Langue par défaut
Config.defaultLanguage = "en" -- Définissez la langue par défaut pour les messages


Config.Whitelist = {
    "steam:", -- Exemple Steam ID
    "license:" -- Exemple License ID   
}

-- Messages multilingues
Config.Messages = {
    ["fr"] = {
        warningMessage = "Votre ping est élevé (%sms). Si votre ping reste au-dessus de la limite, vous serez kické dans %d minute(s).",
        reminderMessage = "Votre ping est toujours élevé (%sms). Temps restant avant le kick : %d minute(s) et %d seconde(s).",
        kickMessage = "Votre ping est trop élevé. Limite : %sms.",
        logMessage = "Le joueur %s (%s) a été kické pour haut ping (%sms)."
    },
    ["en"] = {
        warningMessage = "Your ping is high (%sms). If it remains above the limit, you will be kicked in %d minute(s).",
        reminderMessage = "Your ping is still high (%sms). Time left before kick: %d minute(s) and %d second(s).",
        kickMessage = "Your ping is too high. Limit: %sms.",
        logMessage = "Player %s (%s) was kicked for high ping (%sms)."
    },
    ["es"] = {
        warningMessage = "Tu ping es alto (%sms). Si permanece por encima del límite, serás expulsado en %d minuto(s).",
        reminderMessage = "Tu ping sigue siendo alto (%sms). Tiempo restante antes de la expulsión: %d minuto(s) y %d segundo(s).",
        kickMessage = "Tu ping es demasiado alto. Límite: %sms.",
        logMessage = "El jugador %s (%s) fue expulsado por ping alto (%sms)."
    },
    ["de"] = {
        warningMessage = "Dein Ping ist hoch (%sms). Wenn er über dem Limit bleibt, wirst du in %d Minute(n) gekickt.",
        reminderMessage = "Dein Ping ist immer noch hoch (%sms). Verbleibende Zeit bis zum Kick: %d Minute(n) und %d Sekunde(n).",
        kickMessage = "Dein Ping ist zu hoch. Limit: %sms.",
        logMessage = "Spieler %s (%s) wurde wegen hohen Pings (%sms) gekickt."
    },
    ["it"] = {
        warningMessage = "Il tuo ping è alto (%sms). Se rimane sopra il limite, sarai espulso tra %d minuto/i.",
        reminderMessage = "Il tuo ping è ancora alto (%sms). Tempo rimanente prima dell'espulsione: %d minuto/i e %d secondo/i.",
        kickMessage = "Il tuo ping è troppo alto. Limite: %sms.",
        logMessage = "Il giocatore %s (%s) è stato espulso per ping elevato (%sms)."
    },
    ["pt"] = {
        warningMessage = "Seu ping está alto (%sms). Se permanecer acima do limite, você será expulso em %d minuto(s).",
        reminderMessage = "Seu ping ainda está alto (%sms). Tempo restante antes da expulsão: %d minuto(s) e %d segundo(s).",
        kickMessage = "Seu ping é muito alto. Limite: %sms.",
        logMessage = "O jogador %s (%s) foi expulso por ping alto (%sms)."
    },
    ["ru"] = {
        warningMessage = "Ваш пинг высокий (%sms). Если он останется выше предела, вы будете кикнуты через %d минут(ы).",
        reminderMessage = "Ваш пинг все еще высокий (%sms). Время до кика: %d минут(ы) и %d секунд(ы).",
        kickMessage = "Ваш пинг слишком высокий. Лимит: %sms.",
        logMessage = "Игрок %s (%s) был кикнут за высокий пинг (%sms)."
    },
    ["pl"] = {
        warningMessage = "Twój ping jest wysoki (%sms). Jeśli pozostanie powyżej limitu, zostaniesz wyrzucony za %d minut(y).",
        reminderMessage = "Twój ping nadal jest wysoki (%sms). Pozostały czas do wyrzucenia: %d minut(y) i %d sekund(y).",
        kickMessage = "Twój ping jest zbyt wysoki. Limit: %sms.",
        logMessage = "Gracz %s (%s) został wyrzucony za wysoki ping (%sms)."
    },
    ["ar"] = {
        warningMessage = "البينغ لديك مرتفع (%sms). إذا استمر أعلى من الحد المسموح، سيتم طردك خلال %d دقيقة.",
        reminderMessage = "البينغ لديك لا يزال مرتفعاً (%sms). الوقت المتبقي قبل الطرد: %d دقيقة و%d ثانية.",
        kickMessage = "البينغ لديك مرتفع جداً. الحد المسموح: %sms.",
        logMessage = "تم طرد اللاعب %s (%s) بسبب بينغ مرتفع (%sms)."
    }
}




# Fivem-advance PingKick standalone



Script Summary: High Ping Management System

This script is designed to monitor and manage players' ping on a FiveM server to ensure smooth gameplay. Here's how it works:
Key Features:

    Ping Monitoring:
        The script periodically checks the ping of all connected players at configurable intervals (Config.checkInterval).
        If a player's ping exceeds the specified limit (Config.maxPing), they are notified.

    Warning and Grace Period:
        Players exceeding the ping limit receive a warning message, informing them of their high ping and the time remaining before they are kicked.
        During the grace period (Config.waitTimeBeforeKick), the player is given time to reduce their ping.

    Real-Time Reminders:
        While in the grace period, players receive periodic reminders (Config.reminderInterval) about their ping and the time left before the kick.

    Kick System:
        If the player's ping remains above the limit after the grace period, they are automatically kicked with a notification stating the reason.
        The kick action is logged in the server console with details like the player's name, ID, and ping.

    Whitelist:
        Players with specific identifiers (Steam ID, license, etc.) listed in Config.Whitelist are exempted from the ping checks.
        This ensures that VIPs or administrators are not affected by the system.

    Multi-Language Support:
        The script supports customizable warning, reminder, and kick messages in multiple languages (Config.Messages).
        The default language can be set in Config.defaultLanguage.

Configurable Parameters:

    Ping Limit (Config.maxPing):
        Defines the maximum allowed ping in milliseconds.

    Check Interval (Config.checkInterval):
        Frequency of ping checks for all connected players.

    Grace Period (Config.waitTimeBeforeKick):
        Time given to players to reduce their ping before being kicked.

    Reminder Interval (Config.reminderInterval):
        Frequency of reminders sent to players during the grace period.

    Whitelist (Config.Whitelist):
        List of exempted players (by Steam ID or license ID).

    Multi-Language Messages (Config.Messages):
        Customizable messages for warnings, reminders, and kicks in multiple languages.

Player Experience:

    A player with high ping is first warned, along with details about the ping limit and time remaining.
    They receive periodic updates on their ping and the remaining time.
    If their ping does not improve after the grace period, they are kicked with a clear reason.

Administrative Tools:

    Exempts VIPs and admins using the whitelist.
    Logs all kick actions to the server console for transparency.
    Supports multi-language configurations to cater to a diverse player base.

Goal:

This script maintains server performance and ensures a fair experience for all players by managing those with consistently high ping, while providing flexibility for special cases through a whitelist.



To support my job's, Thanks you   
![qrcode](https://github.com/user-attachments/assets/981fb84c-47e9-4979-a50d-a9b8aadb0d53)




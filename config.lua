--[[
    ════════════════════════════════════════════════════════════════
    The Land of Wolves RP - Horse & Wagon Sharing Script
    Professional Edition - www.wolves.land
    ════════════════════════════════════════════════════════════════
    
    Configuration File
    
    This is a production-ready script suitable for commercial use.
    All features are optimized for performance and reliability.
    
    ════════════════════════════════════════════════════════════════
]]--

Config = {}

-- ════════════════════════════════════════════════════════════════
-- GENERAL SETTINGS
-- ════════════════════════════════════════════════════════════════

-- Turn to false to disable stealing horses/wagons from NPCs
-- When false, players will automatically mount as passengers instead
Config.CanStealToNPC = true

-- Turn to false to disable stealing horses/wagons from other players
-- When false, players will automatically mount as passengers instead
Config.CanStealToPlayer = false

-- Enable debug mode (prints information to console for troubleshooting)
Config.Debug = false

-- ════════════════════════════════════════════════════════════════
-- NOTIFICATION SYSTEM
-- ════════════════════════════════════════════════════════════════

-- Select your notification system
-- Available: 'native' (default RedM), 'ox_lib', 'vorp', 'rsg', 'chat'
Config.NotificationSystem = 'native'

-- ════════════════════════════════════════════════════════════════
-- FRAMEWORK COMPATIBILITY
-- ════════════════════════════════════════════════════════════════

-- Auto-detect framework (recommended)
-- Set to false to manually specify framework
Config.AutoDetectFramework = true

-- Manual framework selection (only used if AutoDetectFramework is false)
-- Available: 'standalone', 'vorp', 'rsg', 'qbcore', 'lxrcore', 'redem'
Config.Framework = 'standalone'

-- Horse script compatibility
-- These settings improve compatibility with various horse scripts
Config.HorseScriptCompat = {
    -- Enable compatibility mode for sirevlc horse scripts
    sirevlc = true,
    -- Enable compatibility mode for VORP horse script
    vorp_horse = true,
    -- Enable compatibility mode for RSG horse script
    rsg_horses = true,
    -- Use alternative mount detection methods
    useAlternativeMountDetection = true,
    -- Detection range for nearby mounts (increased for better detection)
    detectionRange = 5.0
}

-- ════════════════════════════════════════════════════════════════
-- PASSENGER LIMITS
-- ════════════════════════════════════════════════════════════════

-- Maximum number of passengers per horse (driver + passengers)
Config.MaxHorsePassengers = 1  -- 1 driver + 1 passenger on horse

-- Maximum number of passengers per wagon (driver + passengers)
Config.MaxWagonPassengers = 4  -- 1 driver + up to 4 passengers on wagon

-- ════════════════════════════════════════════════════════════════
-- KEYBIND SETTINGS
-- ════════════════════════════════════════════════════════════════

-- Configure the key used to mount horses and wagons
-- Default: 0x26E9DC00 (E key)
--
-- Common RedM Key Codes:
-- E Key = 0x26E9DC00
-- F Key = 0xB2F377E8
-- G Key = 0x760A9C6F
-- H Key = 0x24978A28
-- X Key = 0x8CC9CD42
-- Q Key = 0xDE794E3E
-- 
-- For more key codes, visit: https://docs.fivem.net/docs/game-references/controls/
Config.MountKey = 0x26E9DC00

-- Key name for display in notifications (update this if you change the key)
Config.MountKeyName = "E"

-- ════════════════════════════════════════════════════════════════
-- LANGUAGE SETTINGS
-- ════════════════════════════════════════════════════════════════

-- Select your language
-- Available: 'en' (English), 'es' (Spanish), 'fr' (French), 'de' (German), 
--            'pt' (Portuguese), 'it' (Italian), 'pl' (Polish), 'ru' (Russian)
Config.Language = 'en'

-- Language Translations
Config.Translations = {
    ['en'] = {
        -- Notifications
        mount_passenger = "Press [%s] to mount as passenger",
        mounting = "Mounting as passenger...",
        dismounting = "Dismounting...",
        
        -- Error Messages
        already_mounted = "You are already mounted!",
        no_mount_nearby = "No horse or wagon nearby",
        mount_occupied = "This mount is occupied",
        too_far = "You are too far from the mount",
        
        -- Steal Prevention Messages
        npc_locked = "This horse belongs to someone!",
        player_locked = "This is another player's mount! Mounting as passenger...",
        
        -- Success Messages
        mounted_success = "Mounted successfully!",
        passenger_joined = "A passenger has joined your mount",
        passenger_left = "A passenger has left your mount"
    },
    
    ['es'] = {
        -- Notificaciones
        mount_passenger = "Presiona [%s] para montar como pasajero",
        mounting = "Montando como pasajero...",
        dismounting = "Desmontando...",
        
        -- Mensajes de Error
        already_mounted = "¡Ya estás montado!",
        no_mount_nearby = "No hay caballo o carruaje cerca",
        mount_occupied = "Esta montura está ocupada",
        too_far = "Estás demasiado lejos de la montura",
        
        -- Mensajes de Prevención de Robo
        npc_locked = "¡Este caballo pertenece a alguien!",
        player_locked = "¡Esta es la montura de otro jugador! Montando como pasajero...",
        
        -- Mensajes de Éxito
        mounted_success = "¡Montado exitosamente!",
        passenger_joined = "Un pasajero se ha unido a tu montura",
        passenger_left = "Un pasajero ha dejado tu montura"
    },
    
    ['fr'] = {
        -- Notifications
        mount_passenger = "Appuyez sur [%s] pour monter en tant que passager",
        mounting = "Montage en tant que passager...",
        dismounting = "Descente...",
        
        -- Messages d'Erreur
        already_mounted = "Vous êtes déjà monté!",
        no_mount_nearby = "Aucun cheval ou wagon à proximité",
        mount_occupied = "Cette monture est occupée",
        too_far = "Vous êtes trop loin de la monture",
        
        -- Messages de Prévention de Vol
        npc_locked = "Ce cheval appartient à quelqu'un!",
        player_locked = "C'est la monture d'un autre joueur! Montage en tant que passager...",
        
        -- Messages de Succès
        mounted_success = "Monté avec succès!",
        passenger_joined = "Un passager a rejoint votre monture",
        passenger_left = "Un passager a quitté votre monture"
    },
    
    ['de'] = {
        -- Benachrichtigungen
        mount_passenger = "Drücke [%s] um als Passagier aufzusteigen",
        mounting = "Als Passagier aufsteigen...",
        dismounting = "Absteigen...",
        
        -- Fehlermeldungen
        already_mounted = "Du bist bereits aufgestiegen!",
        no_mount_nearby = "Kein Pferd oder Wagen in der Nähe",
        mount_occupied = "Dieses Reittier ist besetzt",
        too_far = "Du bist zu weit vom Reittier entfernt",
        
        -- Diebstahlpräventionsmeldungen
        npc_locked = "Dieses Pferd gehört jemandem!",
        player_locked = "Das ist das Reittier eines anderen Spielers! Als Passagier aufsteigen...",
        
        -- Erfolgsmeldungen
        mounted_success = "Erfolgreich aufgestiegen!",
        passenger_joined = "Ein Passagier ist auf dein Reittier gestiegen",
        passenger_left = "Ein Passagier hat dein Reittier verlassen"
    },
    
    ['pt'] = {
        -- Notificações
        mount_passenger = "Pressione [%s] para montar como passageiro",
        mounting = "Montando como passageiro...",
        dismounting = "Desmontando...",
        
        -- Mensagens de Erro
        already_mounted = "Você já está montado!",
        no_mount_nearby = "Nenhum cavalo ou carroça por perto",
        mount_occupied = "Esta montaria está ocupada",
        too_far = "Você está muito longe da montaria",
        
        -- Mensagens de Prevenção de Roubo
        npc_locked = "Este cavalo pertence a alguém!",
        player_locked = "Esta é a montaria de outro jogador! Montando como passageiro...",
        
        -- Mensagens de Sucesso
        mounted_success = "Montado com sucesso!",
        passenger_joined = "Um passageiro entrou na sua montaria",
        passenger_left = "Um passageiro saiu da sua montaria"
    },
    
    ['it'] = {
        -- Notifiche
        mount_passenger = "Premi [%s] per montare come passeggero",
        mounting = "Montando come passeggero...",
        dismounting = "Smontando...",
        
        -- Messaggi di Errore
        already_mounted = "Sei già montato!",
        no_mount_nearby = "Nessun cavallo o carro nelle vicinanze",
        mount_occupied = "Questa cavalcatura è occupata",
        too_far = "Sei troppo lontano dalla cavalcatura",
        
        -- Messaggi di Prevenzione Furto
        npc_locked = "Questo cavallo appartiene a qualcuno!",
        player_locked = "Questa è la cavalcatura di un altro giocatore! Montando come passeggero...",
        
        -- Messaggi di Successo
        mounted_success = "Montato con successo!",
        passenger_joined = "Un passeggero è salito sulla tua cavalcatura",
        passenger_left = "Un passeggero è sceso dalla tua cavalcatura"
    },
    
    ['pl'] = {
        -- Powiadomienia
        mount_passenger = "Naciśnij [%s] aby wsiąść jako pasażer",
        mounting = "Wsiadanie jako pasażer...",
        dismounting = "Zsiadanie...",
        
        -- Komunikaty Błędów
        already_mounted = "Już jesteś na koniu!",
        no_mount_nearby = "Brak konia lub wozu w pobliżu",
        mount_occupied = "Ten wierzchowiec jest zajęty",
        too_far = "Jesteś za daleko od wierzchowca",
        
        -- Komunikaty Zabezpieczenia przed Kradzieżą
        npc_locked = "Ten koń należy do kogoś!",
        player_locked = "To wierzchowiec innego gracza! Wsiadanie jako pasażer...",
        
        -- Komunikaty Sukcesu
        mounted_success = "Wsiadłeś pomyślnie!",
        passenger_joined = "Pasażer dołączył do twojego wierzchowca",
        passenger_left = "Pasażer opuścił twojego wierzchowca"
    },
    
    ['ru'] = {
        -- Уведомления
        mount_passenger = "Нажмите [%s] чтобы сесть пассажиром",
        mounting = "Посадка в качестве пассажира...",
        dismounting = "Спешивание...",
        
        -- Сообщения об Ошибках
        already_mounted = "Вы уже сидите верхом!",
        no_mount_nearby = "Рядом нет лошади или повозки",
        mount_occupied = "Это верховое животное занято",
        too_far = "Вы слишком далеко от животного",
        
        -- Сообщения о Предотвращении Кражи
        npc_locked = "Эта лошадь кому-то принадлежит!",
        player_locked = "Это верховое животное другого игрока! Посадка в качестве пассажира...",
        
        -- Сообщения об Успехе
        mounted_success = "Успешно сели!",
        passenger_joined = "Пассажир присоединился к вашему животному",
        passenger_left = "Пассажир покинул ваше животное"
    }
}

-- ════════════════════════════════════════════════════════════════
-- ADVANCED SETTINGS (For experienced users)
-- ════════════════════════════════════════════════════════════════

-- Performance Settings
Config.CacheUpdateInterval = 500  -- How often to update player cache (ms) - Lower = more responsive, higher CPU
Config.PassengerCheckInterval = 2000  -- How often to check if passenger dismounted (ms)
Config.IdleWaitTime = 1000  -- Wait time when player is mounted (ms) - Higher = better performance

-- Distance Settings
Config.MaxInteractionDistance = 3.0  -- Maximum distance to interact with horse/wagon

-- Animation Settings
Config.PassengerAnimation = {
    dict = "amb_rest_sit@world_human_sitting_ground@male_a@idle_a",
    anim = "idle_a"
}

-- Wagon Seat Animations (per seat position)
-- Seat -1 is driver, 0-3 are passenger seats
Config.WagonSeatAnimations = {
    [0] = { -- Front passenger seat
        dict = "amb_rest_sit@world_human_sitting@bench@male_a@idle_a",
        anim = "idle_a"
    },
    [1] = { -- Back left seat
        dict = "amb_rest_sit@world_human_sitting@bench@male_a@idle_a",
        anim = "idle_b"
    },
    [2] = { -- Back right seat
        dict = "amb_rest_sit@world_human_sitting@bench@male_a@idle_a",
        anim = "idle_c"
    },
    [3] = { -- Additional seat
        dict = "amb_rest_sit@world_human_sitting@bench@male_a@idle_a",
        anim = "idle_a"
    }
}

-- Horse Passenger Position Offset (relative to horse)
Config.HorsePassengerOffset = {
    x = 0.0,
    y = -0.5,  -- Behind the driver
    z = 0.3
}

-- Enable/Disable Features
Config.EnablePassengerNotifications = true  -- Notify driver when passenger joins/leaves
Config.EnableSoundEffects = false  -- Play sound effects (requires additional sound files)

-- ════════════════════════════════════════════════════════════════
-- VEHICLE (CAR/TRUCK) SETTINGS
-- ════════════════════════════════════════════════════════════════

-- Enable support for regular vehicles (cars, trucks, etc.)
Config.EnableVehicleSharing = true

-- Maximum passengers for vehicles (driver + passengers)
Config.MaxVehiclePassengers = 4

-- Vehicle models that support passenger sharing (add model hashes or names)
Config.AllowedVehicles = {
    -- Examples (add your vehicle models here)
    -- GetHashKey("vehicle_model_name")
}

-- If empty, all vehicles are allowed (when EnableVehicleSharing is true)
Config.AllowAllVehicles = true

-- ════════════════════════════════════════════════════════════════
-- PERMISSIONS SYSTEM
-- ════════════════════════════════════════════════════════════════

-- Enable permissions system
Config.EnablePermissions = false

-- Permission required to mount as passenger
Config.MountPermission = "horseshare.mount"

-- Permission required to use admin commands
Config.AdminPermission = "horseshare.admin"

-- Supported permission systems (auto-detect)
-- Supports: "ace", "qbcore", "esx", "vorp", "custom"
Config.PermissionSystem = "ace"  -- Default to ACE permissions

-- ════════════════════════════════════════════════════════════════
-- STATISTICS TRACKING
-- ════════════════════════════════════════════════════════════════

-- Enable statistics tracking
Config.EnableStatistics = true

-- Track the following stats:
Config.TrackStats = {
    totalMounts = true,        -- Total times mounted as passenger
    totalDistance = true,      -- Distance traveled as passenger
    totalTime = true,          -- Time spent as passenger
    favoriteMount = true       -- Most used mount type
}

-- Statistics save interval (seconds)
Config.StatsSaveInterval = 300  -- Save every 5 minutes

-- ════════════════════════════════════════════════════════════════
-- DISCORD LOGGING
-- ════════════════════════════════════════════════════════════════

-- Enable Discord logging
Config.EnableDiscordLogs = false

-- Discord webhook URL
Config.DiscordWebhook = ""

-- Discord bot name
Config.DiscordBotName = "Horse Share Logs"

-- Discord embed color (decimal format)
Config.DiscordColor = 3447003  -- Blue

-- Log types to send to Discord
Config.DiscordLogTypes = {
    mount = true,              -- Log when player mounts
    dismount = true,           -- Log when player dismounts
    stats = false,             -- Log statistics updates
    admin = true               -- Log admin commands
}

-- ════════════════════════════════════════════════════════════════
-- DO NOT EDIT BELOW THIS LINE
-- ════════════════════════════════════════════════════════════════

-- Validate configuration
function Config.GetLang(key)
    local lang = Config.Translations[Config.Language]
    if lang and lang[key] then
        return lang[key]
    end
    -- Fallback to English
    return Config.Translations['en'][key] or key
end

Config = {}

--Language
Config.Locale = 'it'

--Wait ticktime
Config.TickTime = 1000

--Starting Black money amount
Config.startAmount = 1500

--Start item
Config.startItem = 'suspicious_package'
Config.maxStartItem = 3

--Final item reward
Config.rewardItem = 'oxy'
Config.maxOxy = 5

--NPC Locations
Config.npcLocations = {
    {
        position = vector3(x,y,z),
        heading = float
    },
    {
        position = vector3(x,y,z),
        heading = float
    },
    {
        position = vector3(x,y,z),
        heading = float
    }
}

--Suspicious package delivery
Config.deliveryPoints = {
    vector3(969.77990, -1557.03700, 30.20764),
    vector3(-173.59390, -1975.40200, 27.14530),
    vector3(-777.35500, 373.81520, 87.35204),
    vector3(-939.38060, 309.26740, 70.67439),
    vector3(-227.40120, -1486.49900, 30.79996),
}

--Ped vehicle model and drive type
Config.vehicleModels = {
    'washington',
    'gauntlet',
    'glendale',
    'panto',
    'sultan',
}

Config.vehicleDriveType = {
    1074528293, --Rushed
    786603, --Normal
    2883621, --Ignore Lights
    5, --Sometimes Overtake Traffic
}

--Ped models
Config.pedModels = {
    {
        model = 'a_f_y_business_02',
        type = 5
    },
    {
        model = 'a_f_y_tourist_01',
        type = 5
    },
    {
        model = 'a_m_m_socenlat_01',
        type = 4
    },
}

--Distances
Config.interactDistances = 2
Config.blipDistances = 5
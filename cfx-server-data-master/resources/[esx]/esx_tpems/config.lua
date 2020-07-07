Config              = {}
Config.DrawDistance = 100.0

Config.Marker = {
	r = 255, g = 255, b = 255,    -- marker color
	x = 0.5, y = 0.5, z = 0.5   -- marker size
}

Config.Zones = {

    -- HUMANE LABS COOLING START --

    HumaneLabEntrance = { -- tp 3
        Pos	= vector3(338.60, -583.83, 74.16), -- marker coords1062.67, -3183.84, -39.169
        Type = 20 -- Marker type
    },

    HumaneLabExit = { -- TP 1
        Pos	= vector3(340.93, -595.44, 28.79), -- marker coords1062.67, -3183.84, -39.169
        Type = 20 -- Marker type
    },

    HumaneLabIn = { -- tp 4
        Pos	= vector3(336.09, -593.95, 28.79), -- marker coords1066.30, -3183.411, -39.163
        Type = -1 -- Marker type
    },

    HumaneLabOut = { -- TP 2
        Pos	= vector3(339.95, -588.12, 74.165), -- marker coords1066.30, -3183.411, -39.163
        Type = -1 -- Marker type
    },

    -- HUMANE LABS COOLING STOP --816.086, -2165.173, -29.619
}

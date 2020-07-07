Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 150  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 8 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(352.79, -561.57, 28.79), heading = 162.79 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(363.15, -591.98, 28.67),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(335.88, -580.95, 28.79)
		},

		Pharmacies = {
			vector3(354.35, -576.44, 28.79)
		},

		Vehicles = {
			{
				Spawner = vector3(327.44, -557.75, -127.74),
				InsideShop = vector3(342.181, -558.66, 28.7),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(-372.9052, 6131.7841, 31.4544), heading = 179.06, radius = 4.0 },
					{ coords = vector3(-372.9052, 6131.7841, 31.4544), heading = 179.06, radius = 4.0 },
					{ coords = vector3(-372.9052, 6131.7841, 31.4544), heading = 179.06, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(341.87, -591.567, 74.165),
				InsideShop = vector3(349.51, -593.86, 74.16),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					--{ coords = vector3(313.5, -1465.1, 46.5), heading = 142.7, radius = 10.0 },
					{ coords = vector3(351.457, -588.64, 74.165), heading = 142.7, radius = 10.0 }
				}
			}
		},

		--FastTravels = {
			{
				From = vector3(339.29, -583.79, 74.16),
				To = { coords = vector3(324.63, -558.15, 28.73), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			--{
			--	From = vector3(275.3, -1361, 23.5),
			--	To = { coords = vector3(295.8, -1446.5, 28.9), heading = 0.0 },
			--	Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(247.3, -1371.5, 23.5),
			--	To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(335.5, -1432.0, 45.50),
			--	To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
			--	Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(234.5, -1373.7, 20.9),
			--	To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(317.9, -1476.1, 28.9),
			--	To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--}
		--},

		--FastTravelsPrompt = {
		--	{
		--		From = vector3(237.4, -1373.8, 26.0),
		--		To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	},
--
		--	{
		--		From = vector3(256.5, -1357.7, 36.0),
		--		To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	}
		--}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Pompier', price = 1000},
		{ model = 'VTU', label = 'Pompier', price = 1000},
		{ model = 'VLDDSIS', label = 'Pompier', price = 1000},
		{ model = 'x5om', label = 'Samu Lyon', price = 1000},
		{ model = 'FSR', label = 'Pompier', price = 1000},
		{ model = 'firetruk', label = 'Pompier', price = 1000},
		{ model = 'vl3sm', label = 'Pompier Routier', price = 1000}
	},

	doctor = {
		{ model = 'ambulance', label = 'Pompier', price = 1000},
		{ model = 'VTU', label = 'Pompier', price = 1000},
		{ model = 'VLDDSIS', label = 'Pompier', price = 1000},
		{ model = 'x5om', label = 'Samu Lyon', price = 1000},
		{ model = 'FSR', label = 'Pompier', price = 1000},
		{ model = 'firetruk', label = 'Pompier', price = 1000},
		{ model = 'vl3sm', label = 'Pompier Routier', price = 1000}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Pompier', price = 1000},
		{ model = 'VTU', label = 'Pompier', price = 1000},
		{ model = 'VLDDSIS', label = 'Pompier', price = 1000},
		{ model = 'x5om', label = 'Samu Lyon', price = 1000},
		{ model = 'FSR', label = 'Pompier', price = 1000},
		{ model = 'firetruk', label = 'Pompier', price = 1000},
		{ model = 'vl3sm', label = 'Pompier Routier', price = 1000}
	},

	boss = {
		{ model = 'ambulance', label = 'Pompier', price = 1000},
		{ model = 'VTU', label = 'Pompier', price = 1000},
		{ model = 'VLDDSIS', label = 'Pompier', price = 1000},
		{ model = 'x5om', label = 'Samu Lyon', price = 1000},
		{ model = 'FSR', label = 'Pompier', price = 1000},
		{ model = 'firetruk', label = 'Pompier', price = 1000},
		{ model = 'vl3sm', label = 'Pompier Routier', price = 1000}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {},

	chief_doctor = {
		{ model = 'maverick', label = 'EMS Maverick', price = 1 }
	},

	boss = {
		{ model = 'maverick', label = 'EMS Maverick', price = 1 }
	}

}

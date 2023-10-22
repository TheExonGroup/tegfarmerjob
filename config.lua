-- Farmerjob | TheExonGroup
-- Thanks for downloading the script!
-- 
-- This script works together with my other scripts and can be used in the connection as well, just choose the addon support below as you like
-- 
-- Unfortunately you can't use the script without other scripts, because this one provides the basics for my scripts.
-- You can find the list of scripts here:
-- https://highcode-webstore.tebex.io/package/5825884
-- https://github.com/EthanPeacock/progressBars/releases/tag/1.0
-- https://github.com/iZerkahh/NativeUILua_Reloaded



Config = {
	-- General --
	framework = 'ESX', -- ESX
	database = 'oxmysql', -- oxmysql
	
	-- Addons support --
	-- (It is not necessary to activate these addons)
	tegpayday = false,
	okokbanking = false,

	-- Interact --
	pedInteractKey = 'E',
	
	TowingVehicle = 120, -- Waiting Seconds for tow Vehicle
	TowingWarning = 30, -- Warning of Towing
	TowingPrice = 20, -- Price for towing
	
	-- Farming Zones
	-- You can create multiple zones but only from level 0-3
	Zones = {
		{
			Titel = 'ASB 8', -- Farmer title
			TitelColor = {r = 255, g = 178, b = 59, a = 0.8}, -- title color in rgba https://rgbacolorpicker.com
			WaitingonSpot = 5, -- Waiting Seconds on Spot
			
			TowingPrice = 20, -- Price for towing after 20 seconds of leave them
			
			BlipIcon = 479, -- Blip icon for the map https://docs.fivem.net/docs/game-references/blips/
			BlipColor = 16, -- Blip color
			BlipScale = 0.9, -- Blip size
			
			MarkerIcon = 0, -- Marker icon https://docs.fivem.net/docs/game-references/markers/
			MarkerScale = 1.0, -- Marker size
			MarkerColor = {r = 255, g = 0, b = 0}, -- Marker color in rgb https://rgbacolorpicker.com (Omit last letter [a]) 
			
			NPCPedCoordsVEC4 = vector4(2458.21875, 4990.9321289063, 46.810276031494-1, 158.86630249023), -- Vector4 (4D) teg_utils -> Command /pos2
			NPCPedCoordsVEC3 = vector3(2458.21875, 4990.9321289063, 46.810276031494-0.8), -- Vector3 (3D) teg_utils -> Command /pos1
			
			PedModel = 'a_m_m_farmer_01', -- ped model from farmer
			
			VehicleSpawnSpots = { -- Parking for the starting point (Vector4)
				{x = 2514.5236816406, y = 4962.2290039063, z = 44.561904907227, h = 37.196262359619},
				{x = 2526.4641113281, y = 4971.8461914063, z = 44.596290588379, h = 102.34104919434},
				{x = 2521.7077636719, y = 4984.8959960938, z = 44.571235656738, h = 155.65536499023},
			},
			
			-- Guide for leveling --
			-- ATTENTION: 	No more levels can be added at the moment! If you have the intention for more levels, feel free to write me privately in Discord
			-- 				Each level is built the same accordingly the clues are also the same
			
			
			-- Level 0
			Level0FarmingVehicle = {
				{Model='tractor'}, -- Specify here the spawn name of the vehicle to be taken for harvesting
			},
			Level0MAX = 100, -- Here the maximum number of levels is displayed, when the player reaches this number he gets a level up and goes to the next level
			Level0MinPrice = 5, -- The number determines the minimum amount for a farm point
			Level0MaxPrice = 7, -- The number determines the maximum amount for a farm point
			Level0LevelUP = 1000, -- A money gift for reaching the new level
			Level0FarmPoints = {
				{x = 2063.1437988281, y = 5046.3081054688, z = 41.148857116699, h = 229.62748718262},	-- These are the farm points you can easily insert using the free tool teg_utils with /pos2
				{x = 2088.5244140625, y = 5048.8833007813, z = 41.114295959473, h = 317.53005981445},	-- These farm points determine the places where the players have to go to get the money and the XP
				{x = 2099.3325195313, y = 5071.4057617188, z = 42.759281158447, h = 356.30868530273},
				{x = 2107.9604492188, y = 5096.7241210938, z = 44.743537902832, h = 347.04779052734},
				{x = 2078.126953125, y = 5109.9077148438, z = 44.614234924316, h = 80.456596374512},
				{x = 2082.9672851563, y = 5119.43359375, z = 46.124904632568, h = 36.245155334473},
				{x = 2072.7416992188, y = 5137.2534179688, z = 47.520114898682, h = 43.676895141602},
				{x = 2053.6069335938, y = 5156.9545898438, z = 48.476093292236, h = 42.742218017578},
				{x = 2028.4715576172, y = 5158.0986328125, z = 47.8557472229, h = 108.91240692139},
				{x = 2006.2659912109, y = 5139.8173828125, z = 45.65592956543, h = 150.07431030273},
				{x = 2000.3845214844, y = 5126.4184570313, z = 44.033397674561, h = 184.49124145508},
				{x = 2016.3194580078, y = 5126.4169921875, z = 44.880867004395, h = 305.2522277832},
				{x = 2040.8294677734, y = 5144.5649414063, z = 46.799430847168, h = 308.8381652832},
				{x = 2052.2360839844, y = 5144.123046875, z = 46.900413513184, h = 221.51332092285},
				{x = 2046.9072265625, y = 5125.8061523438, z = 45.496097564697, h = 154.99417114258},
				{x = 2034.0743408203, y = 5110.1611328125, z = 44.446216583252, h = 133.96600341797},
				{x = 2027.1199951172, y = 5091.1997070313, z = 42.625595092773, h = 214.36755371094},
			},
			
			-- Level 1
			Level1FarmingVehicle = {
				{Model='tractor2'},
			},
			Level1MAX = 100,
			Level1MinPrice = 8,
			Level1MaxPrice = 12,
			Level1LevelUP = 5000,
			Level1FarmPoints = {
				{x = 2186.8713378906, y = 5062.7412109375, z = 44.517417907715, h = 227.54846191406},
				{x = 2200.2043457031, y = 5053.00390625, z = 45.449752807617, h = 233.40283203125},
				{x = 2214.0852050781, y = 5034.2666015625, z = 44.342102050781, h = 206.04942321777},
				{x = 2229.1301269531, y = 5027.6391601563, z = 44.010974884033, h = 321.12551879883},
				{x = 2221.8649902344, y = 5049.2368164063, z = 45.675708770752, h = 70.194496154785},
				{x = 2198.4052734375, y = 5075.8208007813, z = 46.977157592773, h = 27.61728477478},
				{x = 2178.1108398438, y = 5095.6752929688, z = 46.072658538818, h = 352.61535644531},
				{x = 2187.8322753906, y = 5101.6484375, z = 47.532730102539, h = 275.12750244141},
				{x = 2211.8515625, y = 5093.3588867188, z = 49.206233978271, h = 223.29385375977},
				{x = 2222.39453125, y = 5069.4912109375, z = 47.280582427979, h = 200.28427124023},
				{x = 2245.1579589844, y = 5045.9301757813, z = 44.445308685303, h = 279.21234130859},
				{x = 2262.5131835938, y = 5029.037109375, z = 43.236297607422, h = 234.65394592285},
				{x = 2266.1003417969, y = 5043.8193359375, z = 43.75842666626, h = 86.551689147949},
				{x = 2246.9462890625, y = 5057.791015625, z = 45.158039093018, h = 49.762588500977},
				{x = 2217.9855957031, y = 5086.9448242188, z = 48.867443084717, h = 60.445095062256},
				{x = 2197.2270507813, y = 5113.1201171875, z = 49.587787628174, h = 322.45779418945},
				{x = 2212.8862304688, y = 5112.857421875, z = 51.395191192627, h = 217.36535644531},
				{x = 2239.8828125, y = 5084.1171875, z = 47.577796936035, h = 214.60508728027},
				{x = 2266.9841308594, y = 5056.5947265625, z = 44.351421356201, h = 237.07389831543},
				{x = 2289.5974121094, y = 5054.0610351563, z = 44.916172027588, h = 1.3373173475266},
				{x = 2284.6494140625, y = 5076.6958007813, z = 46.480827331543, h = 42.255805969238},
				{x = 2267.9997558594, y = 5084.2641601563, z = 46.274078369141, h = 102.14771270752},
				{x = 2267.9997558594, y = 5084.2641601563, z = 46.274078369141, h = 102.14771270752},
				{x = 2240.9482421875, y = 5096.1059570313, z = 48.872188568115, h = 39.245082855225},
				{x = 2240.09375, y = 5113.8598632813, z = 52.206108093262, h = 337.80526733398},
				{x = 2224.392578125, y = 5136.7797851563, z = 55.141128540039, h = 43.412353515625},
				{x = 2210.5927734375, y = 5128.830078125, z = 53.096229553223, h = 141.50506591797},
			},
			
			-- Level 2
			Level2FarmingVehicle = {
				{Model='tractor2'},
			},
			Level2MAX = 100,
			Level2MinPrice = 13,
			Level2MaxPrice = 17,
			Level2LevelUP = 15000,
			Level2FarmPoints = {
				{x = 2484.0612792969, y = 4831.0810546875, z = 34.825000762939, h = 273.0205078125},
				{x = 2500.8940429688, y = 4838.3081054688, z = 35.26127243042, h = 311.81069946289},
				{x = 2516.8676757813, y = 4857.0961914063, z = 36.962238311768, h = 335.69189453125},
				{x = 2505.0715332031, y = 4864.7807617188, z = 36.975681304932, h = 108.31645202637},
				{x = 2496.6430664063, y = 4878.9223632813, z = 39.069393157959, h = 353.48934936523},
				{x = 2482.3098144531, y = 4867.546875, z = 37.654041290283, h = 151.76696777344},
				{x = 2471.2946777344, y = 4854.9379882813, z = 36.718410491943, h = 131.93266296387},
				{x = 2475.3647460938, y = 4842.7822265625, z = 35.432029724121, h = 294.28262329102},
				{x = 2490.8337402344, y = 4854.7358398438, z = 36.098350524902, h = 319.52255249023},
				{x = 2531.4675292969, y = 4845.3627929688, z = 35.673038482666, h = 262.42523193359},
				{x = 2551.6496582031, y = 4827.5444335938, z = 34.1787109375, h = 225.37269592285},
				{x = 2576.7150878906, y = 4803.7387695313, z = 32.954959869385, h = 214.98692321777},
				{x = 2570.4790039063, y = 4789.3359375, z = 32.568923950195, h = 133.8484954834},
				{x = 2550.513671875, y = 4779.3198242188, z = 32.810356140137, h = 94.149772644043},
				{x = 2523.4006347656, y = 4799.2397460938, z = 33.696765899658, h = 44.808013916016},
				{x = 2507.7963867188, y = 4818.4174804688, z = 34.175487518311, h = 358.01959228516},
				{x = 2519.2751464844, y = 4833.6303710938, z = 34.673725128174, h = 326.69317626953},
				{x = 2535.44921875, y = 4828.5288085938, z = 33.999141693115, h = 202.38339233398},
				{x = 2556.0205078125, y = 4810.5063476563, z = 32.866847991943, h = 238.46318054199},
				{x = 2567.6635742188, y = 4795.716796875, z = 32.487644195557, h = 155.21185302734},
				{x = 2546.2622070313, y = 4792.4350585938, z = 32.750774383545, h = 82.291641235352},
				{x = 2529.0368652344, y = 4805.982421875, z = 33.309745788574, h = 39.736614227295},
				{x = 2513.8305664063, y = 4818.8891601563, z = 33.683670043945, h = 48.899440765381},
			},
			
			-- Level 3
			Level3FarmingVehicle = {
				{Model='tractor3'},
			},
			Level3MAX = 100,
			Level3MinPrice = 18,
			Level3MaxPrice = 25,
			Level3LevelUP = 30000,
			Level3FarmPoints = {
				{x = 1887.6234130859, y = 4763.0546875, z = 41.438064575195, h = 303.31304931641},
				{x = 1906.1645507813, y = 4772.2651367188, z = 42.799575805664, h = 306.59698486328},
				{x = 1925.5462646484, y = 4784.91796875, z = 43.027286529541, h = 280.91311645508},
				{x = 1923.2899169922, y = 4774.9653320313, z = 42.605487823486, h = 125.12423706055},
				{x = 1907.9326171875, y = 4761.8564453125, z = 42.285423278809, h = 125.63278198242},
				{x = 1897.3505859375, y = 4747.13671875, z = 41.050956726074, h = 204.52177429199},
				{x = 1909.1916503906, y = 4741.7299804688, z = 41.654453277588, h = 263.32208251953},
				{x = 1925.2453613281, y = 4750.6450195313, z = 41.976951599121, h = 308.07354736328},
				{x = 1939.1953125, y = 4774.45703125, z = 42.415550231934, h = 71.447486877441},
				{x = 1935.4372558594, y = 4792.9458007813, z = 43.23140335083, h = 306.12377929688},
				{x = 1950.4893798828, y = 4808.1015625, z = 43.47993850708, h = 317.80972290039},
				{x = 1964.1949462891, y = 4816.9541015625, z = 43.269115447998, h = 258.45678710938},
				{x = 1961.3377685547, y = 4803.8974609375, z = 43.055641174316, h = 135.88821411133},
				{x = 1945.2917480469, y = 4784.9428710938, z = 42.954372406006, h = 159.80242919922},
				{x = 1952.3015136719, y = 4777.4467773438, z = 42.532871246338, h = 280.27508544922},
				{x = 1966.9412841797, y = 4791.2065429688, z = 42.477062225342, h = 314.54382324219},
				{x = 1982.7717285156, y = 4799.5908203125, z = 42.16854095459, h = 238.16342163086},
			},
		},
	},
	
	MenuUI = {
		['level'] = '~w~Level : ~g~{level}',
		['xp'] = '~w~XP | ~p~{xp}~w~/~q~{maxxp}',
		['earnings'] = '~w~Verdienst pro Punkt | ~g~${min} - ${max}',
		['earnedmoney'] = '~w~{zonetitel}-Lohn | ~g~${earnedmoney}',
		['payday'] = '~w~Stundenlohn | ~g~${payday}',
		['paydaytimer'] = '~w~Zahltag in ~b~{timer} ~w~Minuten',
		['getonduty'] = '~g~Job beginnen',
		['getoffduty'] = '~o~Job abschließen',
	},
	
	Messages = {
		['getmoney'] = 'Du hast ${money} verdient!',
		['checkpointvehicle'] = 'Du bist nicht in deinem Job-Fahrzeug!',
		['progressbar'] = 'Ernte..',
		['leavefarmingvehicle'] = 'Dein Job-Fahrzeuge wird in {warningseconds} Sekunden kostenpflichtig (${towingprice}) abgeschleppt, wenn du nicht einsteigst!',
		['towingvehicle'] = 'Dein Fahrzeuge wurde kostenpflichtig (${towingprice}) abgeschleppt!',
		['levelup'] = '~w~Du hast ~b~Level {level} erreicht!',
		['maxlevelup'] = '~r~Du hast die maximale Anzahl an Leveln erreicht!'
	}
}
Config = {}

Config.UseESX = false						-- Use ESX Framework
Config.UseQBCore = true					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.UseCustomNotify = false				-- Use a custom notification script, must complete event below.

-- Only complete this event if Config.UseCustomNotify is true; mythic_notification provided as an example
RegisterNetEvent('qb-process:CustomNotify')
AddEventHandler('qb-process:CustomNotify', function(message, type)
    --exports.mythic_notify:SendAlert(type, message, 4000)
end)

Config.NHInput = false						-- Use NH-Input [https://github.com/nerohiro/nh-keyboard]
Config.NHMenu = false						-- Use NH-Menu [https://github.com/whooith/nh-context]
Config.QBInput = true						-- Use QB-Input (Ignored if Config.NHInput = true) [https://github.com/qbcore-framework/qb-input]
Config.QBMenu = true						-- Use QB-Menu (Ignored if Config.NHMenu = true) [https://github.com/qbcore-framework/qb-menu]
Config.OXLib = false						-- Use the OX_lib (Ignored if Config.NHInput or Config.QBInput = true) [https://github.com/overextended/ox_lib]  !! must add shared_script '@ox_lib/init.lua' and lua54 'yes' to fxmanifest!!

Config.UseThirdEye = true					-- If true, allows use of third eye
Config.ThirdEyeName = 'qb-target'			-- If Config.UseThirdEye = true, name of third eye program
Config.Show3DText = false					-- If true, will show 3D text when near crafting point.
Config.PropName =  'bkr_prop_weed_table_01a'		-- Name of prop is used for location. --prop_tool_bench02

Config.ItemMenu = {
	
	['Procesar Marihuana'] = {
		ItemList = {
			['Bolsa de White Widow'] = {
				ItemName = 'weed_white-widow',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_white-widow_bud', label = 'White Widow', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
			['Bolsa de Skunk'] = {
				ItemName = 'weed_skunk',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_skunk_bud', label = 'Skunk', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
			['Bolsa de Purple-Haze'] = {
				ItemName = 'weed_purple-haze',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_purple-haze_bud', label = 'Purple Haze', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
			['Bolsa de Og-Kush'] = {
				ItemName = 'weed_og-kush',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_og-kush_bud', label = 'OG Kush', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
			['Bolsa de Amnesia'] = {
				ItemName = 'weed_amnesia',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_amnesia_bud', label = 'Amnesia Haze', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
			['Bolsa de Ak47'] = {
				ItemName = 'weed_ak47',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_ak47_bud', label = 'AK-47', quantity = 2},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Anfetaminas'] = {
		ItemList = {
			['Sulfato de anfetamina'] = {
				ItemName = 'ampheta_sulfate',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'ephedrine', label = 'Efedrina', quantity = 1}, 
					{itemname = 'sodium_hydroxide', label = 'Hidróxido de Sodio', quantity = 1},
					{itemname = 'sulfuric_acid', label = 'Ácido Sulfúrico', quantity = 1},
				},
			},
			['Bolsa de Anfetamina'] = {
				ItemName = 'amphetabaggy',
				NumberReceived = 1,
				CraftingItems = { 
					{itemname = 'ampheta_sulfate', label = 'Sulfato de anfetamina', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'paracetamol', label = 'Paracetamol', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Cocaina'] = {
		ItemList = {
			['Clorhidrato de cocaína'] = {
				ItemName = 'cocaine_hydrochloride',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'coca_leaf', label = 'Hoja de Coca', quantity = 1}, 
					{itemname = 'kerosene', label = 'Querosene', quantity = 1},
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
				},
			},
			['Bolsa de Cocaina'] = {
				ItemName = 'cokebaggy',
				NumberReceived = 1,
				CraftingItems = { 
					{itemname = 'cocaine_hydrochloride', label = 'Clorhidrato de cocaína', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'ibuprofen', label = 'Ibuprofeno', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Heroina'] = {
		ItemList = {
			['Diacetilmorfina'] = {
				ItemName = 'diacetylmorphine',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'poppyresin', label = 'Amapola', quantity = 1}, 
					{itemname = 'codeine', label = 'Codeina', quantity = 1},
					{itemname = 'chloroform', label = 'Cloroformo', quantity = 1},
					{itemname = 'ammonia', label = 'Amoniaco', quantity = 1},
				},
			},
			['Bolsa de Heroina'] = {
				ItemName = 'cokebaggy',
				NumberReceived = 1,
				CraftingItems = { 
					{itemname = 'diacetylmorphine', label = 'Diacetilmorfina', quantity = 1},
					{itemname = 'paracetamol', label = 'Paracetamol', quantity = 1},
					{itemname = 'ibuprofen', label = 'Ibuprofeno', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Éxtasis'] = {
		ItemList = {
			['Metilendioxianfetamina'] = {
				ItemName = 'methylenedioxyamphetamine',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
					{itemname = 'methylamine', label = 'Hidróxido de Sodio', quantity = 1},
					{itemname = 'safrole', label = 'Ácido Sulfúrico', quantity = 1},
				},
			},
			['Bolsa de Éxtasis'] = {
				ItemName = 'xtcbaggy',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'methylenedioxyamphetamine', label = 'Metilendioxianfetamina', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'sugar', label = 'Azucar', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Metanfetaminas'] = {
		ItemList = {
			['Clorhidrato de Metanfetamina'] = {
				ItemName = 'metha_hydrochloride',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'methylamine', label = 'Metilamina', quantity = 1}, 
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
					{itemname = 'ephedrine', label = 'Efedrina', quantity = 1},
					{itemname = 'pseudoefedrine', label = 'Pseudoefedrina', quantity = 1},
				},
			},
			['Bolsa de Metanfetaminas'] = {
				ItemName = 'meth',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'metha_hydrochloride', label = 'Clorhidrato de Metanfetamina', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'Ibuprofen', label = 'Ibuprofeno', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Crack'] = {
		ItemList = {
			['Clorhidrato de cocaína'] = {
				ItemName = 'cocaine_hydrochloride',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'coca_leaf', label = 'Hoja de Coca', quantity = 1}, 
					{itemname = 'kerosene', label = 'Querosene', quantity = 1},
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
				},
			},
			['Bolsa de Crack'] = {
				ItemName = 'crack_baggy',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'cocaine_hydrochloride', label = 'Clorhidrato de cocaína', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'paracetamol', label = 'Paracetamol', quantity = 1},
					{itemname = 'acetone', label = 'Acetona', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
}

Config.LocationInfo = {
	[1] = {
		Location = vector4(2436.58, 4964.79, 42.35, 222.72), --Oneilranch
		Categories = {'Procesar Metanfetaminas'},
	},
	[2] = {
		Location = vector4(2430.80, 4971.44, 42.35, 42.86), --Oneilranch
		Categories = {'Procesar Éxtasis'},
	},
	[3] = {
		Location = vector4(2433.26, 4969.39, 42.35, 44.75), --Oneilranch
		Categories = {'Procesar Cocaina', 'Procesar Crack', },
	},
	[4] = {
		Location = vector4(1391.83, 3606.05, 38.94, 114.89), --Liquor
		Categories = {'Procesar Cocaina'},
	},
	[5] = {
		Location = vector4(1389.27, 3605.00, 38.94, 292.59), --liquor
		Categories = {'Procesar Crack'},
	},
	[6] = {
		Location = vector4(5212.03, -5129.80, 6.21, 274.91), --cayo
		Categories = {'Procesar Cocaina'},
	},
	[7] = {
		Location = vector4(5211.72, -5127.20, 6.21, 278.68), --cayo
		Categories = {'Procesar Crack'},
	},
	[8] = {
		Location = vector4(5187.23, -5147.22, 3.81, 87.70), --cayo
		Categories = {'Procesar Marihuana'},
	},
	--Tables
	[9] = {
		Location = vector4(2485.00, 3718.50, 43.47, 219.47), --Hippies
		Categories = {'Procesar Marihuana'},
		SpawnTableProp = true
	}, 
	[10] = {
		Location = vector4(1442.85, 6334.76, 23.77, 180.00), --Hobos
		Categories = {'Procesar Marihuana'},
		SpawnTableProp = true
	},  
	[11] = {
		Location = vector4(94.48, 3753.07, 40.77, 70.00), --Stab City
		Categories = {'Procesar Marihuana'},
		SpawnTableProp = true
	},   
	[12] = {
		Location = vector4(985.89, -91.47, 74.85, 132.00), --LostMC
		Categories = {'Procesar Marihuana'},
		SpawnTableProp = true
	},
}

-- Language Configuration
Config.LangType = {
	['error'] = 'error',
	['success'] = 'success',
	['info'] = 'primary'
}

Config.Lang = {
	['PressEOpenMenu'] = 'Prensione ~r~[E]~w~ para abrir.',
	['OpenMenu'] = 'Fabricar',
	['noaccess'] = 'No tiene el artículo requerido para acceder a esto.',
	['menu_header'] = 'Menú de conversión',
	['menu_header_items'] = 'Menú de elementos',
	['item_collect'] = 'Has recibido con éxito ',
	['no_item'] = '¡No tienes los artículos de requisito previo!',
	['cancel'] = 'Cancelar',
	['confirm'] = 'Confirmar',
	['required'] = 'Artículos necesarios para comerciar:',

}

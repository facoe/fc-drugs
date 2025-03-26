Config = {}

Config.UseESX = false						
Config.UseQBCore = true					

Config.UseCustomNotify = false				

RegisterNetEvent('qb-process:CustomNotify')
AddEventHandler('qb-process:CustomNotify', function(message, type)
    
end)

Config.NHInput = false						
Config.NHMenu = false						
Config.QBInput = true						
Config.QBMenu = true						
Config.OXLib = false						

Config.UseThirdEye = true					
Config.ThirdEyeName = 'qb-target'			
Config.Show3DText = false					
Config.PropName =  'bkr_prop_weed_table_01a'		

Config.ItemMenu = {
	--lab1
	['Procesar Cocaina'] = {
		ItemList = {
			['Cocaina'] = {
				ItemName = 'coke',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'coca_leaf', label = 'Hoja de Coca', quantity = 1}, 
					{itemname = 'sulfuric_acid', label = 'Ácido Sulfúrico', quantity = 1},
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
					{itemname = 'acetone', label = 'Acetona', quantity = 1},
				},
			},
			['Bolsa de Cocaina'] = {
				ItemName = 'cokebaggy',
				NumberReceived = 1,
				CraftingItems = { 
					{itemname = 'coke', label = 'Cocaina', quantity = 1},
					{itemname = 'bakingsoda', label = 'Bicarbonato de Sodio', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Crack'] = {
		ItemList = {
			['Bolsa de Crack'] = {
				ItemName = 'crack_baggy',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'coke', label = 'Cocaina', quantity = 1},
					{itemname = 'sodium_hydroxide', label = 'Hidróxido de Sodio', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	--lab2
	['Procesar Metanfetaminas'] = {
		ItemList = {
			['Metanfetaminas'] = {
				ItemName = 'methtray',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'liquidmix', label = 'Sustancia Base', quantity = 1}, 
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
					{itemname = 'sodium_hydroxide', label = 'Hidróxido de Sodio', quantity = 1},
					{itemname = 'sulfuric_acid', label = 'Ácido Sulfúrico', quantity = 1},
				},
			},
			['Bolsa de Metanfetaminas'] = {
				ItemName = 'meth',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'methtray', label = 'Metanfetaminas', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	['Procesar Éxtasis'] = {
		ItemList = {
			['Éxtasis'] = {
				ItemName = 'drug_ecstasy',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'liquidmix2', label = 'Aceite Base', quantity = 2},
					{itemname = 'hydrochloric_acid', label = 'Ácido Clorhídrico', quantity = 1},
					{itemname = 'sodium_hydroxide', label = 'Hidróxido de Sodio', quantity = 1},
					{itemname = 'sulfuric_acid', label = 'Ácido Sulfúrico', quantity = 1},
					{itemname = 'acetone', label = 'Acetona', quantity = 1},
				},
			},
			['Bolsa de Éxtasis'] = {
				ItemName = 'xtcbaggy',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'drug_ecstasy', label = 'Éxtasis', quantity = 1},
					{itemname = 'empty_weed_bag', label = 'Bolsa Vacía', quantity = 1},
				},
			},
		},
	},
	--lab3
	['Procesar Marihuana'] = {
		ItemList = {
			['Bolsa de White Widow'] = {
				ItemName = 'weed_white-widow',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_white-widow_bud', label = 'White Widow', quantity = 2},
				},
			},
			['Bolsa de Skunk'] = {
				ItemName = 'weed_skunk',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_skunk_bud', label = 'Skunk', quantity = 2},
				},
			},
			['Bolsa de Purple-Haze'] = {
				ItemName = 'weed_purple-haze',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_purple-haze_bud', label = 'Purple Haze', quantity = 2},
				},
			},
			['Bolsa de Og-Kush'] = {
				ItemName = 'weed_og-kush',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_og-kush_bud', label = 'OG Kush', quantity = 2},
				},
			},
			['Bolsa de Amnesia'] = {
				ItemName = 'weed_amnesia',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_amnesia_bud', label = 'Amnesia Haze', quantity = 2},
				},
			},
			['Bolsa de Ak47'] = {
				ItemName = 'weed_ak47',
				NumberReceived = 1,
				CraftingItems = {
					{itemname = 'weed_ak47_bud', label = 'AK-47', quantity = 2},
				},
			},
		},
	},
}

Config.LocationInfo = {
	[1] = {
		Location = vector4(2436.17, 4965.49, 42.35, 222.72),
		Categories = {'Procesar Metanfetaminas'},
	},
	[2] = {
		Location = vector4(2431.21, 4970.85, 42.35, 42.86),
		Categories = {'Procesar Éxtasis'},
	},
	[3] = {
		Location = vector4(1391.83, 3606.05, 38.94, 114.89),
		Categories = {'Procesar Cocaina'},
	},
	[4] = {
		Location = vector4(1389.27, 3605.00, 38.94, 292.59),
		Categories = {'Procesar Crack'},
	},
	[5] = {
		Location = vector4(2228.07, 5605.72, 54.87, 26.68),
		Categories = {'Procesar Marihuana'},
	},
	[6] = {
		Location = vector4(2230.48, 5606.76, 54.87, 285.41),
		Categories = {'Procesar Marihuana'},
	},
	--cayo
	[7] = {
		Location = vector4(5196.14, -5133.68, 3.36, 246.57),
		Categories = {'Procesar Metanfetaminas'},
	},
	[8] = {
		Location = vector4(5194.59, -5137.23, 3.35, 167.30),
		Categories = {'Procesar Éxtasis'},
	},
	[9] = {
		Location = vector4(5212.03, -5129.80, 6.21, 274.91),
		Categories = {'Procesar Cocaina'},
	},
	[10] = {
		Location = vector4(5211.72, -5127.20, 6.21, 278.68),
		Categories = {'Procesar Crack'},
	},
	[11] = {
		Location = vector4(5187.23, -5147.22, 3.81, 87.70),
		Categories = {'Procesar Marihuana'},
	},
	--labs
	[12] = {
		Location = vector4(-519.10, -1740.45, 16.73, 268.33),
		Categories = {'Procesar Metanfetaminas'},
	},
	[13] = {
		Location = vector4(-521.27, -1738.54, 17.20, 327.03),
		Categories = {'Procesar Éxtasis'},
	},
	[14] = {
		Location = vector4(-530.20, -1795.87, 21.61, 58.87),
		Categories = {'Procesar Cocaina'},
	},
	[15] = {
		Location = vector4(-527.76, -1796.60, 21.61, 328.79),
		Categories = {'Procesar Crack'},
	},
	[16] = {
		Location = vector4(1770.50, -1619.67, 113.64, 178.63),
		Categories = {'Procesar Marihuana'},
	},
	[17] = {
		Location = vector4(924.95, -1269.08, 20.71, 125.40),
		Categories = {'Procesar Marihuana'},
	},
	[18] = {
		Location = vector4(-1529.14, 97.27, 47.78, 31.75),
		Categories = {'Procesar Cocaina', 'Procesar Crack', 'Procesar Metanfetaminas', 'Procesar Éxtasis'}, 
	},
	--Tables
	[19] = {
		Location = vector4(1454.42, 1136.27, 114.33, 270.00), 
		Categories = {'Procesar Marihuana'},
		SpawnTableProp = true
	}, 
	[20] = {
		Location = vector4(-226.27, -1313.70, 30.89, 180.00), 
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
	['OpenMenu'] = 'Procesar',
	['noaccess'] = 'No tiene el artículo requerido para acceder a esto.',
	['menu_header'] = 'Menú de conversión',
	['menu_header_items'] = 'Menú de elementos',
	['item_collect'] = 'Has recibido con éxito ',
	['no_item'] = '¡No tienes los artículos de requisito previo!',
	['cancel'] = 'Cancelar',
	['confirm'] = 'Confirmar',
	['required'] = 'Artículos necesarios para comerciar:',

}

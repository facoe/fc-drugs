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
	--Tables
	[5] = {
		Location = vector4(1454.42, 1136.27, 114.33, 270.00), 
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

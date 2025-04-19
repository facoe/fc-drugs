# fc-drugs
Script sencillo de crafteos y procesos de drogas basado en angelicxs-SimpleCraft.

Compatible con qb-target/qtarget/ox_target
Compatible con qb-menu/nh-context/ox_libs

Características:
- Posibilidad de configurar ubicaciones ilimitadas
- El acceso a cada ubicación se puede limitar según el objeto que el jugador necesite en su inventario
- Cada ubicación puede tener tantas categorías de objetos (o una combinación de ellas) como se desee
- Posibilidad de organizar las listas de objetos en categorías para facilitar la introducción de información
- Se pueden cambiar fácilmente los ajustes de cada objeto fabricable

Items:

	-- fc-drugs
	['distilledwater'] 				 = {['name'] = 'distilledwater', 			    ['label'] = 'Agua Destilada',				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'distilledwater.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Agua destilada'},
	["bakingsoda"] 		 	 	     = {["name"] = "bakingsoda",           		    ["label"] = "Bicarbonato",	 		    	["weight"] = 1500, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "¡Bicarbonato de sodio para el hogar"},
	['weed_white-widow_seed'] 		 = {['name'] = 'weed_white-widow_seed', 		['label'] = 'Semilla de White Widow', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis White Widow'},
	['weed_skunk_seed'] 			 = {['name'] = 'weed_skunk_seed', 			    ['label'] = 'Semilla de Skunk', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis Skunk'},
	['weed_purple-haze_seed'] 		 = {['name'] = 'weed_purple-haze_seed', 		['label'] = 'Semilla de Purple Haze', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis Purple Haze'},
	['weed_og-kush_seed'] 			 = {['name'] = 'weed_og-kush_seed', 			['label'] = 'Semilla de OGKush', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis OG Kush'},
	['weed_amnesia_seed'] 			 = {['name'] = 'weed_amnesia_seed', 			['label'] = 'Semilla de Amnesia', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis Amnesia'},
	['weed_ak47_seed'] 				 = {['name'] = 'weed_ak47_seed', 			    ['label'] = 'Semilla de AK47', 				['weight'] = 2, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Semilla de Cannabis AK47'},
	['empty_weed_bag'] 				 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Bolsa Vacía',					['weight'] = 2, 		['type'] = 'item', 		['image'] = 'empty_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bolsa vacía'},
	['weed_nutrition'] 				 = {['name'] = 'weed_nutrition', 			    ['label'] = 'Fertilizante',					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fertilizer.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fertilizante para plantas'},
	["weed_white-widow_bud"] 		 = {["name"] = "weed_white-widow_bud", 			["label"] = "Cogollo de White Widow", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_white-widow_bud.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
    ["weed_skunk_bud"] 			 	 = {["name"] = "weed_skunk_bud", 				["label"] = "Cogollo de Skunk", 			["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_skunk_bud.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
    ["weed_purple-haze_bud"] 		 = {["name"] = "weed_purple-haze_bud", 			["label"] = "Cogollo de Purple Haze", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_purple-haze_bud.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
    ["weed_og-kush_bud"] 			 = {["name"] = "weed_og-kush_bud", 				["label"] = "Cogollo de OG Kush", 			["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_og-kush_bud.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
    ["weed_amnesia_bud"] 			 = {["name"] = "weed_amnesia_bud", 				["label"] = "Cogollo de Amnesia Haze", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_amnesia_bud.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
    ["weed_ak47_bud"] 			 	 = {["name"] = "weed_ak47_bud", 				["label"] = "Cogollo de AK-47", 			["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_ak47_bud.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Variedad de cannabis"},
	["cannabis"] 			 		 = {["name"] = "cannabis", 						["label"] = "Cogollo de Marihuana", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "weed_cannabis.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Cannabis"},
	["ampheta_sulfate"] 		 	 = {["name"] = "ampheta_sulfate",           	["label"] = "Sulfato de Anfetamina",		["weight"] = 1500,		["type"] = "item",		["image"] = "ampheta_sulfate.png", 		 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sustancia base de anfetamina"},
	["cocaine_hydrochloride"] 		 = {["name"] = "cocaine_hydrochloride",      	["label"] = "Clorhidrato de Cocaína",		["weight"] = 1500,		["type"] = "item",		["image"] = "cocaine_hydrochloride.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sustancia base de cocaina"},
	["diacetylmorphine"] 		 	 = {["name"] = "diacetylmorphine",         		["label"] = "Diacetilmorfina",				["weight"] = 1500,		["type"] = "item",		["image"] = "diacetylmorphine.png", 	 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sustancia base de heroina"},
	["methylenedioxyamphetamine"] 	 = {["name"] = "methylenedioxyamphetamine",  	["label"] = "Metilendioxianfetamina",		["weight"] = 1500,		["type"] = "item",		["image"] = "methylenedioxyamphetamine.png",["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sustancia base de éxtasis"},
	["metha_hydrochloride"] 		 = {["name"] = "metha_hydrochloride",  			["label"] = "Clorhidrato de metanfetamina",	["weight"] = 1500,		["type"] = "item",		["image"] = "metha_hydrochloride.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Sustancia base de metanfetamina"},
	['weed_white-widow'] 			 = {['name'] = 'weed_white-widow', 			 	['label'] = 'Bolsa con White Widow ',   	['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_white-widow_bag.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana White Widow'},
	['weed_skunk'] 				  	 = {['name'] = 'weed_skunk', 			 		['label'] = 'Bolsa con Skunk', 	  	  		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_skunk_bag.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana Skunk'},
	['weed_purple-haze'] 			 = {['name'] = 'weed_purple-haze', 			 	['label'] = 'Bolsa con Purple Haze',   		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_purple-haze_bag.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana Purple Haze'},
	['weed_og-kush'] 				 = {['name'] = 'weed_og-kush', 			 		['label'] = 'Bolsa con OGKush', 	  		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_og-kush_bag.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana OG Kush'},
	['weed_amnesia'] 				 = {['name'] = 'weed_amnesia', 			 		['label'] = 'Bolsa con Amnesia', 	  		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_amnesia_bag.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana Amnesia'},
	['weed_ak47'] 				     = {['name'] = 'weed_ak47', 			 		['label'] = 'Bolsa con AK47', 		  		['weight'] = 5, 		['type'] = 'item', 		['image'] = 'weed_ak47_bag.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de Marihuana AK47'},
	['cokebaggy'] 					 = {['name'] = 'cokebaggy', 			  	  	['label'] = 'Bolsa de Cocaina', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'coke_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de cocaina'},
	['crackbaggy'] 				 	 = {['name'] = 'crackbaggy', 			  	  	['label'] = 'Bolsa de Crack', 				['weight'] = 2, 		['type'] = 'item', 		['image'] = 'crack_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de crack'},
	['xtcbaggy'] 					 = {['name'] = 'xtcbaggy', 			  	  		['label'] = 'Bolsa de Éxtasis', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'ecstasy_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de éxtasis'},
	['methbaggy'] 					 = {['name'] = 'meth_baggy', 					['label'] = 'Bolsa de Metanfetamina', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'meth_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de metanfetaminas'},
	['amphetabaggy'] 				 = {['name'] = 'amphetabaggy', 					['label'] = 'Bolsa de Anfetaminas', 		['weight'] = 2, 		['type'] = 'item', 		['image'] = 'ampheta_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de anfetaminas'},
	['heroinbaggy'] 				 = {['name'] = 'heroinbaggy', 					['label'] = 'Bolsa de Heroina', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'heroin_bag.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Bolsa con 2g de heroina'},
	['weed_brick'] 		 			 = {['name'] = 'weed_brick', 					['label'] = 'Paquete de Marihuana',			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'weed_brick.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de marihuana (500g)'},
	['coke_brick'] 		 			 = {['name'] = 'coke_brick', 					['label'] = 'Paquete de Cocaina',			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'coke_brick.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Paquete Mediano de Cocaina',	['weight'] = 250, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 125 bolsas de cocaina (250g)'},
	['ampheta_bag'] 		 		 = {['name'] = 'ampheta_bag', 					['label'] = 'Paquete de Anfetaminas',		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ampheta_bag.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	['crack_brick'] 		 		 = {['name'] = 'crack_brick', 					['label'] = 'Paquete de Crack',				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'crack_brick.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	['ecstasy_brick'] 		 		 = {['name'] = 'ecstasy_brick', 				['label'] = 'Paquete de Extasis',			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'ecstasy_brick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	['heroin_brick'] 		 		 = {['name'] = 'heroin_brick', 					['label'] = 'Paquete de Heroina',			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'heroin_brick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	['meth_bagxl'] 		 			 = {['name'] = 'meth_bagxl', 					['label'] = 'Paquete de Metanfetaminas',	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'meth_bagxl.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paquete con 250 bolsas de cocaina (500g)'},
	["ampheta"] 		 	 	 	 = {["name"] = "ampheta",           			["label"] = "Anfetamina", 					["weight"] = 2,			["type"] = "item", 		["image"] = "ampheta.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Anfetamina procesada"},
	["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Hojas de Coca",	 			["weight"] = 2,			["type"] = "item", 		["image"] = "coke_leaf.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Hojas de coca"},
    ["poppyresin"] 		 	 	 	 = {["name"] = "poppyresin",           			["label"] = "Amapola",	 					["weight"] = 2, 		["type"] = "item", 		["image"] = "poppy.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Resina de amapola"},
	["hydrochloric_acid"] 			 = {["name"] = "hydrochloric_acid", 			["label"] = "Ácido Clorhídrico",			["weight"] = 500, 		["type"] = "item", 		["image"] = "hydrochloric_acid.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Para procesar coca, extasis y metanfetamina"},
    ["sodium_hydroxide"] 			 = {["name"] = "sodium_hydroxide", 				["label"] = "Hidróxido de Sodio", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "sodium_hydroxide.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Para procesar anfetaminas"},
    ["sulfuric_acid"] 		 	 	 = {["name"] = "sulfuric_acid",           		["label"] = "Ácido Sulfúrico",	 			["weight"] = 500, 		["type"] = "item", 		["image"] = "sulfuric_acid.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar coca y anfetaminas"},
    ["kerosene"] 		 	 	 	 = {["name"] = "kerosene",           			["label"] = "Queroseno",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "kerosene.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar coca"},
    ["acetone"] 		 	 	     = {["name"] = "acetone",           		    ["label"] = "Acetona",						["weight"] = 500, 		["type"] = "item", 		["image"] = "acetone.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar crack"},
    ["ammonia"] 		 	 	     = {["name"] = "ammonia",           		    ["label"] = "Amoniaco",						["weight"] = 500, 		["type"] = "item", 		["image"] = "ammonia.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar crack y heroina"},
    ["methylamine"] 		 	 	 = {["name"] = "methylamine",           		["label"] = "Metilamina",					["weight"] = 500, 		["type"] = "item", 		["image"] = "methylamine.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar extasis y metanfetamina"},
    ["safrole"] 		 	 	     = {["name"] = "safrole",           		    ["label"] = "Safrol",						["weight"] = 500, 		["type"] = "item", 		["image"] = "safrole.png", 		    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar extasis"},
    ["chloroform"] 		 	 	     = {["name"] = "chloroform",           		    ["label"] = "Cloroformo",					["weight"] = 500, 		["type"] = "item", 		["image"] = "chloroform.png", 		    	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Para procesar heroina"},
	['codeine'] 					 = {['name'] = 'codeine', 						['label'] = 'Codeina', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'codeine.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ["description"] = "Para procesar heroina"},
	["ibuprofen"] 		 	 	 	 = {["name"] = "ibuprofen",           			["label"] = "Ibuprofeno",	 				["weight"] = 300, 		["type"] = "item", 		["image"] = "ibuprofen.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Medicamento"},
	["paracetamol"] 		 	 	 = {["name"] = "paracetamol",           		["label"] = "Paracetamol",	 				["weight"] = 300, 		["type"] = "item", 		["image"] = "paracetamol.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Medicamento"},
	["ephedrine"] 		 	 	 	 = {["name"] = "ephedrine",           			["label"] = "Efedrina",	 					["weight"] = 300, 		["type"] = "item", 		["image"] = "ephedrine.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Medicamento"},
	['pseudoefedrine'] 				 = {['name'] = 'pseudoefedrine', 				['label'] = 'Pseudoefedrina', 				['weight'] = 300, 		['type'] = 'item', 		['image'] = 'pseudoefedrine.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ["description"] = "Medicamento"},

// CBE Ground Textures

string cbeGetBaseTerrain(int biomeTheme = 1, int regionFlavor = 1)
{
	int caveRoll = rmRandInt(1, 6);
	int forestEuropeRoll = rmRandInt(1, 6);
	int forestAsiaRoll = rmRandInt(1, 13);
	int forestNorthAmericaRoll = rmRandInt(1, 17);
	int jungleAfricaRoll = rmRandInt(1, 6);
	int jungleAsiaRoll = rmRandInt(1, 26);
	int jungleSouthAmericaRoll = rmRandInt(1, 8);
	int desertAfricaRoll = rmRandInt(1, 16);
	int desertAsiaRoll = rmRandInt(1, 13);
	int desertNorthAmericaRoll = rmRandInt(1, 28);
	int plainsAfricaRoll = rmRandInt(1, 12);
	int plainsAsiaRoll = rmRandInt(1, 14);
	int plainsEuropeRoll = rmRandInt(1, 10);
	int plainsNorthAmericaRoll = rmRandInt(1, 18);
	int mountainSouthAmericaRoll = rmRandInt(1, 31);
	int mountainAsiaRoll = rmRandInt(1, 13);
	int mountainEuropeRoll = rmRandInt(1, 10);
	int mountainNorthAmericaRoll = rmRandInt(1, 24);
	int wetlandSouthAmericaRoll = rmRandInt(1, 15);
	int wetlandAsiaRoll = rmRandInt(1, 21);
	int wetlandIslandRoll = rmRandInt(1, 11);
	int coldEuropeRoll = rmRandInt(1, 12);
	int coldAsiaRoll = rmRandInt(1, 12);
	int coldNorthAmericaRoll = rmRandInt(1, 26);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("cave\cave_ground5");
		if (caveRoll == 2)
			return("Cave\cave_ground5");
		if (caveRoll == 3)
			return("cave\cave_top");
		if (caveRoll == 4)
			return("cave\cave_top_a");
		if (caveRoll == 5)
			return("cave\cave_top_a_passable");
		return("cave\\cave_ground5");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("new_england\ground1_ne");
			if (forestEuropeRoll == 2)
				return("new_england\ground2_ne");
			if (forestEuropeRoll == 3)
				return("new_england\ground3_ne");
			if (forestEuropeRoll == 4)
				return("new_england\ground4_ne");
			if (forestEuropeRoll == 5)
				return("new_england\ground5_ne");
			return("new_england\groundforest_ne");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("coastal_japan\ground_dirt1_co_japan");
			if (forestAsiaRoll == 2)
				return("coastal_japan\ground_dirt2_co_japan");
			if (forestAsiaRoll == 3)
				return("coastal_japan\ground_dirt3_co_japan");
			if (forestAsiaRoll == 4)
				return("coastal_japan\ground_dirt4_co_japan");
			if (forestAsiaRoll == 5)
				return("coastal_japan\ground_forest_co_japan");
			if (forestAsiaRoll == 6)
				return("coastal_japan\ground_Grass1_co_japan");
			if (forestAsiaRoll == 7)
				return("coastal_japan\ground_grass1_co_japan");
			if (forestAsiaRoll == 8)
				return("coastal_japan\ground_grass2_co_japan");
			if (forestAsiaRoll == 9)
				return("coastal_japan\ground_grass3_co_japan");
			if (forestAsiaRoll == 10)
				return("Yellow_river\forest_yellow_riv");
			if (forestAsiaRoll == 11)
				return("Yellow_river\grass1_yellow_riv");
			if (forestAsiaRoll == 12)
				return("Yellow_river\grass2_yellow_riv");
			return("Yellow_river\grass3_yellow_riv");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("Carolinas\forestfloor_longleafpine");
			if (forestNorthAmericaRoll == 2)
				return("Carolinas\grass2");
			if (forestNorthAmericaRoll == 3)
				return("carolinas\grass3");
			if (forestNorthAmericaRoll == 4)
				return("Carolinas\grass4");
			if (forestNorthAmericaRoll == 5)
				return("carolinas\grass4");
			if (forestNorthAmericaRoll == 6)
				return("Carolinas\grass5");
			if (forestNorthAmericaRoll == 7)
				return("carolinas\ground_grass2_car");
			if (forestNorthAmericaRoll == 8)
				return("carolinas\ground_grass3_car");
			if (forestNorthAmericaRoll == 9)
				return("carolinas\ground_grass4_car");
			if (forestNorthAmericaRoll == 10)
				return("carolinas\ground_grass5_car");
			if (forestNorthAmericaRoll == 11)
				return("carolinas\ground_grass6_car");
			if (forestNorthAmericaRoll == 12)
				return("great_lakes\ground_forest_gl");
			if (forestNorthAmericaRoll == 13)
				return("great_lakes\ground_grass1_gl");
			if (forestNorthAmericaRoll == 14)
				return("great_lakes\ground_grass4_gl");
			if (forestNorthAmericaRoll == 15)
				return("great_lakes\ground_grass5_gl");
			if (forestNorthAmericaRoll == 16)
				return("california\groundforest_cal");
			return("california\groundforest2_cal");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("AfricaRainforest\ground_dirt1_afriRainforest");
			if (jungleAfricaRoll == 2)
				return("AfricaRainforest\ground_dirt2_afriRainforest");
			if (jungleAfricaRoll == 3)
				return("AfricaRainforest\ground_grass1_afriRainforest");
			if (jungleAfricaRoll == 4)
				return("AfricaRainforest\ground_grass4_afriRainforest");
			if (jungleAfricaRoll == 5)
				return("AfricaSavanna\ground_forest1_afriSavanna");
			return("AfricaSavanna\ground_forest2_afriSavanna");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo\ground_forest_borneo");
			if (jungleAsiaRoll == 2)
				return("borneo\ground_grass1_borneo");
			if (jungleAsiaRoll == 3)
				return("borneo\ground_grass2_borneo");
			if (jungleAsiaRoll == 4)
				return("borneo\ground_grass3_borneo");
			if (jungleAsiaRoll == 5)
				return("borneo\ground_grass4_borneo");
			if (jungleAsiaRoll == 6)
				return("borneo\ground_grass5_borneo");
			if (jungleAsiaRoll == 7)
				return("borneo\ground_sand1_borneo");
			if (jungleAsiaRoll == 8)
				return("borneo\ground_sand2_borneo");
			if (jungleAsiaRoll == 9)
				return("borneo\ground_sand3_borneo");
			if (jungleAsiaRoll == 10)
				return("Ceylon\ground_grass2_Ceylon");
			if (jungleAsiaRoll == 11)
				return("ceylon\ground_grass3_ceylon");
			if (jungleAsiaRoll == 12)
				return("Ceylon\ground_sand1_Ceylon");
			if (jungleAsiaRoll == 13)
				return("Ceylon\ground_sand2_Ceylon");
			if (jungleAsiaRoll == 14)
				return("ceylon\ground_sand2_ceylon");
			if (jungleAsiaRoll == 15)
				return("ceylon\ground_sand3_ceylon");
			if (jungleAsiaRoll == 16)
				return("Ceylon\ground_sand3_Ceylon");
			if (jungleAsiaRoll == 17)
				return("ceylon\ground_sand4_ceylon");
			if (jungleAsiaRoll == 18)
				return("deccan\ground_dirt2_deccan");
			if (jungleAsiaRoll == 19)
				return("deccan\ground_dirt3_deccan");
			if (jungleAsiaRoll == 20)
				return("deccan\ground_dirt4_deccan");
			if (jungleAsiaRoll == 21)
				return("deccan\ground_dirt5_deccan");
			if (jungleAsiaRoll == 22)
				return("deccan\ground_grass2_deccan");
			if (jungleAsiaRoll == 23)
				return("Deccan\ground_grass2_deccan");
			if (jungleAsiaRoll == 24)
				return("deccan\ground_grass3_deccan");
			if (jungleAsiaRoll == 25)
				return("Deccan\ground_grass4_deccan");
			return("lava\volcano_borneo");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("Amazon\ground1_ama");
			if (jungleSouthAmericaRoll == 2)
				return("Amazon\ground2_ama");
			if (jungleSouthAmericaRoll == 3)
				return("Amazon\ground3_ama");
			if (jungleSouthAmericaRoll == 4)
				return("amazon\ground4_ama");
			if (jungleSouthAmericaRoll == 5)
				return("Amazon\ground4_ama");
			if (jungleSouthAmericaRoll == 6)
				return("Amazon\ground5_ama");
			if (jungleSouthAmericaRoll == 7)
				return("Amazon\groundforest_ama");
			return("Amazon\cliff_top1_ama");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("Africa\groundCracked_afr");
			if (desertAfricaRoll == 2)
				return("africa\groundCracked_afr");
			if (desertAfricaRoll == 3)
				return("Africa\sand_afr");
			if (desertAfricaRoll == 4)
				return("AfricaDesert\ground_dirt1_afriDesert");
			if (desertAfricaRoll == 5)
				return("AfricaDesert\ground_dirt2_afriDesert");
			if (desertAfricaRoll == 6)
				return("AfricaDesert\ground_forest1_afriDesert");
			if (desertAfricaRoll == 7)
				return("AfricaDesert\ground_forest2_afriDesert");
			if (desertAfricaRoll == 8)
				return("AfricaDesert\ground_grass2_afriDesert");
			if (desertAfricaRoll == 9)
				return("AfricaDesert\ground_grass3_afriDesert");
			if (desertAfricaRoll == 10)
				return("AfricaDesert\ground_grass4_afriDesert");
			if (desertAfricaRoll == 11)
				return("AfricaDesert\ground_rock1_afriDesert");
			if (desertAfricaRoll == 12)
				return("AfricaDesert\ground_sand1_afriDesert");
			if (desertAfricaRoll == 13)
				return("AfricaDesert\ground_sand2_afriDesert");
			if (desertAfricaRoll == 14)
				return("painteddesert\pd_ground_diffuse_d");
			if (desertAfricaRoll == 15)
				return("painteddesert\pd_ground_diffuse_e");
			return("painteddesert\pd_ground_diffuse_f");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("himalayas\ground_dirt1_himal");
			if (desertAsiaRoll == 2)
				return("himalayas\ground_dirt2_himal");
			if (desertAsiaRoll == 3)
				return("himalayas\ground_dirt6_himal");
			if (desertAsiaRoll == 4)
				return("himalayas\ground_dirt8_himal");
			if (desertAsiaRoll == 5)
				return("mongolia\ground_sand1_mongol");
			if (desertAsiaRoll == 6)
				return("mongolia\ground_sand2_mongol");
			if (desertAsiaRoll == 7)
				return("mongolia\ground_sand3_mongol");
			if (desertAsiaRoll == 8)
				return("deccan\ground_dirt2_deccan");
			if (desertAsiaRoll == 9)
				return("deccan\ground_dirt3_deccan");
			if (desertAsiaRoll == 10)
				return("deccan\ground_dirt4_deccan");
			if (desertAsiaRoll == 11)
				return("deccan\ground_dirt5_deccan");
			if (desertAsiaRoll == 12)
				return("lava\volcano_dirt");
			return("lava\crater_passable");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("sonora\cliff_edge_son");
			if (desertNorthAmericaRoll == 2)
				return("sonora\ground1_son");
			if (desertNorthAmericaRoll == 3)
				return("sonora\ground1clifftop_son");
			if (desertNorthAmericaRoll == 4)
				return("sonora\ground2_son");
			if (desertNorthAmericaRoll == 5)
				return("sonora\ground3_son");
			if (desertNorthAmericaRoll == 6)
				return("sonora\ground4_son");
			if (desertNorthAmericaRoll == 7)
				return("sonora\ground5_son");
			if (desertNorthAmericaRoll == 8)
				return("sonora\ground6_son");
			if (desertNorthAmericaRoll == 9)
				return("sonora\ground7_son");
			if (desertNorthAmericaRoll == 10)
				return("sonora\groundforest_son");
			if (desertNorthAmericaRoll == 11)
				return("texas\cliff_edge_tex");
			if (desertNorthAmericaRoll == 12)
				return("Texas\cliff_edge_tex");
			if (desertNorthAmericaRoll == 13)
				return("texas\Cliff_gravel_tex");
			if (desertNorthAmericaRoll == 14)
				return("Texas\cliff_top_tex");
			if (desertNorthAmericaRoll == 15)
				return("texas\cliff_top_tex");
			if (desertNorthAmericaRoll == 16)
				return("texas\Gravel_tex");
			if (desertNorthAmericaRoll == 17)
				return("texas\ground1_tex");
			if (desertNorthAmericaRoll == 18)
				return("Texas\ground1_tex");
			if (desertNorthAmericaRoll == 19)
				return("texas\ground2");
			if (desertNorthAmericaRoll == 20)
				return("texas\ground2_tex");
			if (desertNorthAmericaRoll == 21)
				return("Texas\ground2_tex");
			if (desertNorthAmericaRoll == 22)
				return("texas\ground3_tex");
			if (desertNorthAmericaRoll == 23)
				return("Texas\ground3_tex");
			if (desertNorthAmericaRoll == 24)
				return("texas\ground4_tex");
			if (desertNorthAmericaRoll == 25)
				return("Texas\ground4_tex");
			if (desertNorthAmericaRoll == 26)
				return("texas\ground5_tex");
			if (desertNorthAmericaRoll == 27)
				return("Texas\ground5_tex");
			return("texas\groundforest_tex");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("africa\ground1_afr");
			if (plainsAfricaRoll == 2)
				return("Africa\ground1_afr");
			if (plainsAfricaRoll == 3)
				return("Africa\ground2_afr");
			if (plainsAfricaRoll == 4)
				return("Africa\ground3_afr");
			if (plainsAfricaRoll == 5)
				return("africa\ground3_afr");
			if (plainsAfricaRoll == 6)
				return("Africa\groundStraw_afr");
			if (plainsAfricaRoll == 7)
				return("Africa\pathBlend_afr");
			if (plainsAfricaRoll == 8)
				return("AfricaSavanna\ground_dirt2_afriSavanna");
			if (plainsAfricaRoll == 9)
				return("AfricaSavanna\ground_forest1_afriSavanna");
			if (plainsAfricaRoll == 10)
				return("AfricaSavanna\ground_forest2_afriSavanna");
			if (plainsAfricaRoll == 11)
				return("AfricaSavanna\ground_rock1_afriSavanna");
			return("AfricaDesert\ground_grass4_afriDesert");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("Mongolia\ground_grass1_mongol");
			if (plainsAsiaRoll == 2)
				return("mongolia\ground_grass1_co_japan");
			if (plainsAsiaRoll == 3)
				return("mongolia\ground_grass3_mongol");
			if (plainsAsiaRoll == 4)
				return("mongolia\ground_grass4_mongol");
			if (plainsAsiaRoll == 5)
				return("Mongolia\ground_grass4_mongol");
			if (plainsAsiaRoll == 6)
				return("mongolia\ground_grass5_mongol");
			if (plainsAsiaRoll == 7)
				return("mongolia\ground_grass6_mongol");
			if (plainsAsiaRoll == 8)
				return("Yellow_river\grass1_yellow_riv");
			if (plainsAsiaRoll == 9)
				return("Yellow_river\grass2_yellow_riv");
			if (plainsAsiaRoll == 10)
				return("yellow_river\grass2_yellow_riv");
			if (plainsAsiaRoll == 11)
				return("Yellow_river\grass3_yellow_riv");
			if (plainsAsiaRoll == 12)
				return("Yellow_river\grass4_yellow_riv");
			if (plainsAsiaRoll == 13)
				return("Yellow_river\stone1_yellow_riv");
			return("Yellow_river\stone3_yellow_riv");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("pampas\ground1_pam");
			if (plainsEuropeRoll == 2)
				return("Pampas\ground1_pam");
			if (plainsEuropeRoll == 3)
				return("pampas\ground2_pam");
			if (plainsEuropeRoll == 4)
				return("pampas\ground3_pam");
			if (plainsEuropeRoll == 5)
				return("Pampas\ground3_pam");
			if (plainsEuropeRoll == 6)
				return("Pampas\ground4_pam");
			if (plainsEuropeRoll == 7)
				return("pampas\ground4_pam");
			if (plainsEuropeRoll == 8)
				return("Pampas\ground5_pam");
			if (plainsEuropeRoll == 9)
				return("pampas\ground5_pam");
			return("pampas\ground6_pam");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("great_plains\default");
			if (plainsNorthAmericaRoll == 2)
				return("great_plains\ground1_gp");
			if (plainsNorthAmericaRoll == 3)
				return("great_plains\ground2_gp");
			if (plainsNorthAmericaRoll == 4)
				return("great_plains\ground3_gp");
			if (plainsNorthAmericaRoll == 5)
				return("great_plains\ground4_gp");
			if (plainsNorthAmericaRoll == 6)
				return("great_plains\ground5_gp");
			if (plainsNorthAmericaRoll == 7)
				return("great_plains\ground6_gp");
			if (plainsNorthAmericaRoll == 8)
				return("great_plains\ground7_gp");
			if (plainsNorthAmericaRoll == 9)
				return("great_plains\ground7a_gp");
			if (plainsNorthAmericaRoll == 10)
				return("great_plains\ground8_gp");
			if (plainsNorthAmericaRoll == 11)
				return("great_plains\groundforest_gp");
			if (plainsNorthAmericaRoll == 12)
				return("texas\cliff_top_grass_tex");
			if (plainsNorthAmericaRoll == 13)
				return("Texas\cliff_top_grass_tex");
			if (plainsNorthAmericaRoll == 14)
				return("texas\ground1_tex");
			if (plainsNorthAmericaRoll == 15)
				return("texas\ground2_tex");
			if (plainsNorthAmericaRoll == 16)
				return("texas\ground3_tex");
			if (plainsNorthAmericaRoll == 17)
				return("texas\ground4_tex");
			return("texas\ground5_tex");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("andes\ground07_and");
			if (mountainSouthAmericaRoll == 2)
				return("andes\ground08_and");
			if (mountainSouthAmericaRoll == 3)
				return("andes\ground09_and");
			if (mountainSouthAmericaRoll == 4)
				return("andes\ground10_and");
			if (mountainSouthAmericaRoll == 5)
				return("andes\ground11_and");
			if (mountainSouthAmericaRoll == 6)
				return("andes\ground12_and");
			if (mountainSouthAmericaRoll == 7)
				return("andes\ground14_and");
			if (mountainSouthAmericaRoll == 8)
				return("andes\ground17_and");
			if (mountainSouthAmericaRoll == 9)
				return("andes\ground18_and");
			if (mountainSouthAmericaRoll == 10)
				return("andes\ground2_and");
			if (mountainSouthAmericaRoll == 11)
				return("andes\ground22_and");
			if (mountainSouthAmericaRoll == 12)
				return("andes\ground25_and");
			if (mountainSouthAmericaRoll == 13)
				return("andes\ground4_and");
			if (mountainSouthAmericaRoll == 14)
				return("araucania\ground_dirt1_ara");
			if (mountainSouthAmericaRoll == 15)
				return("araucania\ground_dirt2_ara");
			if (mountainSouthAmericaRoll == 16)
				return("araucania\ground_dirt3_ara");
			if (mountainSouthAmericaRoll == 17)
				return("araucania\ground_grass1_ara");
			if (mountainSouthAmericaRoll == 18)
				return("araucania\ground_grass1_ara_ozarks");
			if (mountainSouthAmericaRoll == 19)
				return("araucania\ground_grass2_ara");
			if (mountainSouthAmericaRoll == 20)
				return("araucania\ground_snow1_ara");
			if (mountainSouthAmericaRoll == 21)
				return("araucania\ground_snow2_ara");
			if (mountainSouthAmericaRoll == 22)
				return("araucania\ground_snow3_ara");
			if (mountainSouthAmericaRoll == 23)
				return("araucania\ground_snow4_ara");
			if (mountainSouthAmericaRoll == 24)
				return("araucania\ground_snow5_ara");
			if (mountainSouthAmericaRoll == 25)
				return("araucania\ground07_ara");
			if (mountainSouthAmericaRoll == 26)
				return("araucania\ground07_b_ara");
			if (mountainSouthAmericaRoll == 27)
				return("araucania\ground10_ara");
			if (mountainSouthAmericaRoll == 28)
				return("araucania\ground11_ara");
			if (mountainSouthAmericaRoll == 29)
				return("araucania\ground12_ara");
			if (mountainSouthAmericaRoll == 30)
				return("patagonia\ground_clifftop_pat");
			return("patagonia\ground_cliffedge_pat");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("himalayas\cliff_himal_top");
			if (mountainAsiaRoll == 2)
				return("himalayas\\cliff_himal_top");
			if (mountainAsiaRoll == 3)
				return("himalayas\ground_dirt1_himal");
			if (mountainAsiaRoll == 4)
				return("himalayas\ground_dirt2_himal");
			if (mountainAsiaRoll == 5)
				return("himalayas\ground_dirt6_himal");
			if (mountainAsiaRoll == 6)
				return("himalayas\ground_dirt8_himal");
			if (mountainAsiaRoll == 7)
				return("mongolia\ground_grass1_co_japan");
			if (mountainAsiaRoll == 8)
				return("mongolia\ground_grass3_mongol");
			if (mountainAsiaRoll == 9)
				return("mongolia\ground_grass4_mongol");
			if (mountainAsiaRoll == 10)
				return("Mongolia\ground_grass4_mongol");
			if (mountainAsiaRoll == 11)
				return("mongolia\ground_grass5_mongol");
			if (mountainAsiaRoll == 12)
				return("mongolia\ground_grass6_mongol");
			return("deccan\wall_deccan");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("new_england\cliff_inland_side_ne");
			if (mountainEuropeRoll == 2)
				return("new_england\cliff_inland_top_ne");
			if (mountainEuropeRoll == 3)
				return("new_england\cliff_side_ne");
			if (mountainEuropeRoll == 4)
				return("new_england\ground2_cliff_ne");
			if (mountainEuropeRoll == 5)
				return("pampas\ground1_pam");
			if (mountainEuropeRoll == 6)
				return("pampas\ground2_pam");
			if (mountainEuropeRoll == 7)
				return("pampas\ground3_pam");
			if (mountainEuropeRoll == 8)
				return("pampas\ground4_pam");
			if (mountainEuropeRoll == 9)
				return("pampas\ground5_pam");
			return("pampas\ground6_pam");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("rockies\clifftop_roc");
			if (mountainNorthAmericaRoll == 2)
				return("rockies\ground1_roc");
			if (mountainNorthAmericaRoll == 3)
				return("rockies\ground2_roc");
			if (mountainNorthAmericaRoll == 4)
				return("rockies\ground3_roc");
			if (mountainNorthAmericaRoll == 5)
				return("rockies\ground4_roc");
			if (mountainNorthAmericaRoll == 6)
				return("rockies\ground5_roc");
			if (mountainNorthAmericaRoll == 7)
				return("rockies\groundforestsnow_roc");
			if (mountainNorthAmericaRoll == 8)
				return("rockies\groundsnow1_roc");
			if (mountainNorthAmericaRoll == 9)
				return("rockies\groundsnow2_roc");
			if (mountainNorthAmericaRoll == 10)
				return("rockies\groundsnow3");
			if (mountainNorthAmericaRoll == 11)
				return("rockies\groundsnow3_roc");
			if (mountainNorthAmericaRoll == 12)
				return("rockies\groundsnow5_roc");
			if (mountainNorthAmericaRoll == 13)
				return("rockies\groundsnow6_roc");
			if (mountainNorthAmericaRoll == 14)
				return("rockies\groundsnow7_roc");
			if (mountainNorthAmericaRoll == 15)
				return("rockies\groundsnow8_roc");
			if (mountainNorthAmericaRoll == 16)
				return("nwterritory\ground_grass1_nwt");
			if (mountainNorthAmericaRoll == 17)
				return("NWterritory\ground_grass1_nwt");
			if (mountainNorthAmericaRoll == 18)
				return("NWterritory\ground_grass1a_nwt");
			if (mountainNorthAmericaRoll == 19)
				return("nwterritory\ground_grass1a_nwt");
			if (mountainNorthAmericaRoll == 20)
				return("nwterritory\ground_grass2_nwt");
			if (mountainNorthAmericaRoll == 21)
				return("NWterritory\ground_grass2_nwt");
			if (mountainNorthAmericaRoll == 22)
				return("nwterritory\ground_grass3_nwt");
			if (mountainNorthAmericaRoll == 23)
				return("NWterritory\ground_grass3_nwt");
			return("NWterritory\ground_grass5_nwt");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazon\river2_am");
			if (wetlandSouthAmericaRoll == 2)
				return("Amazon\ground_road_ama");
			if (wetlandSouthAmericaRoll == 3)
				return("Amazon\ground1_ama");
			if (wetlandSouthAmericaRoll == 4)
				return("Amazon\ground2_ama");
			if (wetlandSouthAmericaRoll == 5)
				return("Amazon\ground3_ama");
			if (wetlandSouthAmericaRoll == 6)
				return("amazon\ground4_ama");
			if (wetlandSouthAmericaRoll == 7)
				return("Amazon\ground4_ama");
			if (wetlandSouthAmericaRoll == 8)
				return("Amazon\ground5_ama");
			if (wetlandSouthAmericaRoll == 9)
				return("Amazon\groundforest_ama");
			if (wetlandSouthAmericaRoll == 10)
				return("bayou\ground1_bay");
			if (wetlandSouthAmericaRoll == 11)
				return("bayou\ground2_bay");
			if (wetlandSouthAmericaRoll == 12)
				return("bayou\ground3_bay");
			if (wetlandSouthAmericaRoll == 13)
				return("bayou\ground4_passable_bay");
			if (wetlandSouthAmericaRoll == 14)
				return("bayou\ground8_bay");
			return("bayou\groundforest_bay");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("borneo\shoreline1_borneo");
			if (wetlandAsiaRoll == 2)
				return("borneo\ground_forest_borneo");
			if (wetlandAsiaRoll == 3)
				return("borneo\ground_grass1_borneo");
			if (wetlandAsiaRoll == 4)
				return("borneo\ground_grass2_borneo");
			if (wetlandAsiaRoll == 5)
				return("borneo\ground_sand1_borneo");
			if (wetlandAsiaRoll == 6)
				return("borneo\ground_sand2_borneo");
			if (wetlandAsiaRoll == 7)
				return("borneo\ground_sand3_borneo");
			if (wetlandAsiaRoll == 8)
				return("ceylon\ground_shoreline2_ceylon");
			if (wetlandAsiaRoll == 9)
				return("Ceylon\ground_grass2_Ceylon");
			if (wetlandAsiaRoll == 10)
				return("ceylon\ground_grass3_ceylon");
			if (wetlandAsiaRoll == 11)
				return("Ceylon\ground_sand1_Ceylon");
			if (wetlandAsiaRoll == 12)
				return("Ceylon\ground_sand2_Ceylon");
			if (wetlandAsiaRoll == 13)
				return("ceylon\ground_sand2_ceylon");
			if (wetlandAsiaRoll == 14)
				return("ceylon\ground_sand3_ceylon");
			if (wetlandAsiaRoll == 15)
				return("Ceylon\ground_sand3_Ceylon");
			if (wetlandAsiaRoll == 16)
				return("ceylon\ground_sand4_ceylon");
			if (wetlandAsiaRoll == 17)
				return("deccan\ground_grass2_deccan");
			if (wetlandAsiaRoll == 18)
				return("Deccan\ground_grass2_deccan");
			if (wetlandAsiaRoll == 19)
				return("deccan\ground_grass3_deccan");
			if (wetlandAsiaRoll == 20)
				return("Deccan\ground_grass4_deccan");
			return("zpaustralia\groundshore_australia");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean\ground_shoreline1_crb");
			if (wetlandIslandRoll == 2)
				return("caribbean\ground_shoreline2_crb");
			if (wetlandIslandRoll == 3)
				return("caribbean\ground_shoreline3_crb");
			if (wetlandIslandRoll == 4)
				return("caribbean\ground1_crb");
			if (wetlandIslandRoll == 5)
				return("caribbean\ground2_crb");
			if (wetlandIslandRoll == 6)
				return("caribbean\ground3_crb");
			if (wetlandIslandRoll == 7)
				return("caribbean\ground4_crb");
			if (wetlandIslandRoll == 8)
				return("caribbean\ground6_crb");
			if (wetlandIslandRoll == 9)
				return("caribbean\ground7_crb");
			if (wetlandIslandRoll == 10)
				return("caribbean\groundforest_crb");
			return("caribbean\groundforestNative_crb");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("great_lakes\ground_ice1_gl");
			if (coldEuropeRoll == 2)
				return("great_lakes\ground_ice1_glw");
			if (coldEuropeRoll == 3)
				return("great_lakes\ground_ice2_gl");
			if (coldEuropeRoll == 4)
				return("great_lakes\ground_ice2_glw");
			if (coldEuropeRoll == 5)
				return("great_lakes\ground_ice3_glw");
			if (coldEuropeRoll == 6)
				return("great_lakes\ground_snow1_gl");
			if (coldEuropeRoll == 7)
				return("great_lakes\ground_snow1_w_gl");
			if (coldEuropeRoll == 8)
				return("great_lakes\ground_snow2_gl");
			if (coldEuropeRoll == 9)
				return("great_lakes\ground_snow2_w_gl");
			if (coldEuropeRoll == 10)
				return("great_lakes\ground_snow3_gl");
			if (coldEuropeRoll == 11)
				return("great_lakes\groundforest_snow_gl");
			return("rockies_snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("yukon\ground_grass2_gl");
			if (coldAsiaRoll == 2)
				return("yukon\ground1_yuk");
			if (coldAsiaRoll == 3)
				return("Yukon\ground10_yuk");
			if (coldAsiaRoll == 4)
				return("yukon\ground10_yuk");
			if (coldAsiaRoll == 5)
				return("yukon\ground11_yuk");
			if (coldAsiaRoll == 6)
				return("yukon\ground2_yuk");
			if (coldAsiaRoll == 7)
				return("yukon\ground3_yuk");
			if (coldAsiaRoll == 8)
				return("yukon\ground3x_yuk");
			if (coldAsiaRoll == 9)
				return("yukon\ground4_yuk");
			if (coldAsiaRoll == 10)
				return("yukon\ground5_yuk");
			if (coldAsiaRoll == 11)
				return("yukon\ground6_yuk");
			return("yukon\ground8_yuk");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("yukon\ground_grass2_gl");
			if (coldNorthAmericaRoll == 2)
				return("yukon\ground1_yuk");
			if (coldNorthAmericaRoll == 3)
				return("Yukon\ground10_yuk");
			if (coldNorthAmericaRoll == 4)
				return("yukon\ground10_yuk");
			if (coldNorthAmericaRoll == 5)
				return("yukon\ground11_yuk");
			if (coldNorthAmericaRoll == 6)
				return("yukon\ground2_yuk");
			if (coldNorthAmericaRoll == 7)
				return("yukon\ground3_yuk");
			if (coldNorthAmericaRoll == 8)
				return("yukon\ground3x_yuk");
			if (coldNorthAmericaRoll == 9)
				return("yukon\ground4_yuk");
			if (coldNorthAmericaRoll == 10)
				return("yukon\ground5_yuk");
			if (coldNorthAmericaRoll == 11)
				return("yukon\ground6_yuk");
			if (coldNorthAmericaRoll == 12)
				return("yukon\ground8_yuk");
			if (coldNorthAmericaRoll == 13)
				return("yukon\groundforestsnow_yuk");
			if (coldNorthAmericaRoll == 14)
				return("rockies\groundforestsnow_roc");
			if (coldNorthAmericaRoll == 15)
				return("rockies\groundsnow1_roc");
			if (coldNorthAmericaRoll == 16)
				return("rockies\groundsnow2_roc");
			if (coldNorthAmericaRoll == 17)
				return("rockies\groundsnow3");
			if (coldNorthAmericaRoll == 18)
				return("rockies\groundsnow3_roc");
			if (coldNorthAmericaRoll == 19)
				return("rockies\groundsnow5_roc");
			if (coldNorthAmericaRoll == 20)
				return("rockies\groundsnow6_roc");
			if (coldNorthAmericaRoll == 21)
				return("rockies\groundsnow7_roc");
			if (coldNorthAmericaRoll == 22)
				return("rockies\groundsnow8_roc");
			if (coldNorthAmericaRoll == 23)
				return("great_lakes\ground_snow1_gl");
			if (coldNorthAmericaRoll == 24)
				return("great_lakes\ground_snow2_gl");
			if (coldNorthAmericaRoll == 25)
				return("great_lakes\ground_snow3_gl");
			return("great_lakes\groundforest_snow_gl");
		}
	}
	return("grass");
}

// ================================================================
// Elevation
// ================================================================

float cbeGetTerrainInitHeight(int biomeTheme = 1, int geographyLandform = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0.0);
	if (biomeTheme == cbeBiomeColdNorth())
		return(6.0);
	if (biomeTheme == cbeBiomeMountain() || geographyLandform == cbeGeoHighlandValley())
		return(6.0);
	if (biomeTheme == cbeBiomeDesert() || geographyLandform == cbeGeoCanyonlands())
		return(4.0);
	if (geographyLandform == cbeGeoRiverBasin() || geographyLandform == cbeGeoDelta())
		return(3.0);
	if (geographyLandform == cbeGeoHarbor() || geographyLandform == cbeGeoPeninsula() || geographyLandform == cbeGeoIslandCoast())
		return(2.0);
	return(0.0);
}

// ================================================================
// Map Types
// ================================================================


// CBE Terrain Mixes

string cbeGetBaseTerrainMix(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1)
{
	int caveRoll = rmRandInt(1, 2);
	int forestEuropeRoll = rmRandInt(1, 15);
	int forestAsiaRoll = rmRandInt(1, 18);
	int forestNorthAmericaRoll = rmRandInt(1, 16);
	int jungleAfricaRoll = rmRandInt(1, 4);
	int jungleAsiaRoll = rmRandInt(1, 16);
	int jungleSouthAmericaRoll = rmRandInt(1, 11);
	int desertAfricaRoll = rmRandInt(1, 16);
	int desertAsiaRoll = rmRandInt(1, 14);
	int desertNorthAmericaRoll = rmRandInt(1, 20);
	int plainsAfricaRoll = rmRandInt(1, 10);
	int plainsAsiaRoll = rmRandInt(1, 13);
	int plainsEuropeRoll = rmRandInt(1, 13);
	int plainsNorthAmericaRoll = rmRandInt(1, 15);
	int mountainSouthAmericaRoll = rmRandInt(1, 15);
	int mountainAsiaRoll = rmRandInt(1, 12);
	int mountainEuropeRoll = rmRandInt(1, 13);
	int mountainNorthAmericaRoll = rmRandInt(1, 15);
	int wetlandSouthAmericaRoll = rmRandInt(1, 12);
	int wetlandAsiaRoll = rmRandInt(1, 16);
	int wetlandIslandRoll = rmRandInt(1, 8);
	int coldEuropeRoll = rmRandInt(1, 12);
	int coldAsiaRoll = rmRandInt(1, 8);
	int coldNorthAmericaRoll = rmRandInt(1, 15);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("caves2");
		return("great plains drygrass");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("newengland_grass");
			if (forestEuropeRoll == 2)
				return("NewEngland_grass");
			if (forestEuropeRoll == 3)
				return("newengland_rock");
			if (forestEuropeRoll == 4)
				return("danish_grass1");
			if (forestEuropeRoll == 5)
				return("danish_grass2");
			if (forestEuropeRoll == 6)
				return("danish_grass3");
			if (forestEuropeRoll == 7)
				return("italy_grass");
			if (forestEuropeRoll == 8)
				return("italy_grass_lush");
			if (forestEuropeRoll == 9)
				return("italy_grass_medium");
			if (forestEuropeRoll == 10)
				return("italy_grass_dirt");
			if (forestEuropeRoll == 11)
				return("italy_north_grass");
			if (forestEuropeRoll == 12)
				return("italy_north_dirt");
			if (forestEuropeRoll == 13)
				return("italy_path");
			if (forestEuropeRoll == 14)
				return("geometricpatterngrass");
			return("Flowers_Purple");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("coastal_honshu_b");
			if (forestAsiaRoll == 2)
				return("coastal_japan_a");
			if (forestAsiaRoll == 3)
				return("coastal_japan_b");
			if (forestAsiaRoll == 4)
				return("coastal_japan_c");
			if (forestAsiaRoll == 5)
				return("yellow_river_a");
			if (forestAsiaRoll == 6)
				return("yellow_river_b");
			if (forestAsiaRoll == 7)
				return("yellow_river_c");
			if (forestAsiaRoll == 8)
				return("yellow_river_forest");
			if (forestAsiaRoll == 9)
				return("Yellow_River_A");
			if (forestAsiaRoll == 10)
				return("mongolia_forest");
			if (forestAsiaRoll == 11)
				return("mongolia_grass");
			if (forestAsiaRoll == 12)
				return("mongolia_grass_a");
			if (forestAsiaRoll == 13)
				return("mongolia_grass_b");
			if (forestAsiaRoll == 14)
				return("deccan_grass_a");
			if (forestAsiaRoll == 15)
				return("Deccan_grass_a");
			if (forestAsiaRoll == 16)
				return("Deccan_Grass_A");
			if (forestAsiaRoll == 17)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("carolina grass");
			if (forestNorthAmericaRoll == 2)
				return("carolina_dirt");
			if (forestNorthAmericaRoll == 3)
				return("carolina_forest");
			if (forestNorthAmericaRoll == 4)
				return("carolina_grass");
			if (forestNorthAmericaRoll == 5)
				return("carolina_grass_dry");
			if (forestNorthAmericaRoll == 6)
				return("carolina_grassier");
			if (forestNorthAmericaRoll == 7)
				return("greatlakes_grass");
			if (forestNorthAmericaRoll == 8)
				return("great plains forest");
			if (forestNorthAmericaRoll == 9)
				return("Great Plains Forest");
			if (forestNorthAmericaRoll == 10)
				return("great plains grass");
			if (forestNorthAmericaRoll == 11)
				return("Great Plains grass");
			if (forestNorthAmericaRoll == 12)
				return("california_grass");
			if (forestNorthAmericaRoll == 13)
				return("california_grassrocks");
			if (forestNorthAmericaRoll == 14)
				return("california_madrone_forest");
			if (forestNorthAmericaRoll == 15)
				return("plymouth_grass");
			return("saguenay grass");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("africa rainforest grass");
			if (jungleAfricaRoll == 2)
				return("africa rainforest grass dry");
			if (jungleAfricaRoll == 3)
				return("africa rainforest grass medium");
			return("africa savanna forest");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo_grass_a");
			if (jungleAsiaRoll == 2)
				return("borneo_grass_b");
			if (jungleAsiaRoll == 3)
				return("borneo_sand_a");
			if (jungleAsiaRoll == 4)
				return("borneo_underbrush");
			if (jungleAsiaRoll == 5)
				return("indochina_grass_a");
			if (jungleAsiaRoll == 6)
				return("indochina_underbrush");
			if (jungleAsiaRoll == 7)
				return("ceylon_grass_a");
			if (jungleAsiaRoll == 8)
				return("ceylon_sand_a");
			if (jungleAsiaRoll == 9)
				return("deccan_grass_a");
			if (jungleAsiaRoll == 10)
				return("Deccan_grass_a");
			if (jungleAsiaRoll == 11)
				return("Deccan_Grass_A");
			if (jungleAsiaRoll == 12)
				return("deccan_grass_b");
			if (jungleAsiaRoll == 13)
				return("Deccan_Grass_B");
			if (jungleAsiaRoll == 14)
				return("deccan_grassy_dirt_a");
			if (jungleAsiaRoll == 15)
				return("deccan_grassy_Dirt_a");
			return("deccan_grassy_dirt_a_noprops");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("Amazon Dirt");
			if (jungleSouthAmericaRoll == 2)
				return("Amazon Grass");
			if (jungleSouthAmericaRoll == 3)
				return("amazon grass");
			if (jungleSouthAmericaRoll == 4)
				return("amazon grass dirt");
			if (jungleSouthAmericaRoll == 5)
				return("Amazon Grass Dirt");
			if (jungleSouthAmericaRoll == 6)
				return("amazon grass medium");
			if (jungleSouthAmericaRoll == 7)
				return("Amazon Grass Medium");
			if (jungleSouthAmericaRoll == 8)
				return("orinoco grass");
			if (jungleSouthAmericaRoll == 9)
				return("yucatan_grass");
			if (jungleSouthAmericaRoll == 10)
				return("bayou_grass");
			return("bayou_forest");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("africa desert dirt");
			if (desertAfricaRoll == 2)
				return("africa desert grass");
			if (desertAfricaRoll == 3)
				return("Africa Desert Grass");
			if (desertAfricaRoll == 4)
				return("africa desert grass dry");
			if (desertAfricaRoll == 5)
				return("Africa Desert Grass dry");
			if (desertAfricaRoll == 6)
				return("africa desert grass medium");
			if (desertAfricaRoll == 7)
				return("Africa Desert Grass Medium");
			if (desertAfricaRoll == 8)
				return("africa desert grass mud blend");
			if (desertAfricaRoll == 9)
				return("Africa desert rock");
			if (desertAfricaRoll == 10)
				return("africa desert rock");
			if (desertAfricaRoll == 11)
				return("africa desert sand");
			if (desertAfricaRoll == 12)
				return("africa east dirt");
			if (desertAfricaRoll == 13)
				return("africa east grass");
			if (desertAfricaRoll == 14)
				return("africa east grass dry");
			if (desertAfricaRoll == 15)
				return("scorched_ground");
			return("scorched01");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("himalayas_a");
			if (desertAsiaRoll == 2)
				return("himalayas_b");
			if (desertAsiaRoll == 3)
				return("himalayas_c");
			if (desertAsiaRoll == 4)
				return("deccan_dirt_a");
			if (desertAsiaRoll == 5)
				return("deccan_grassy_dirt_a");
			if (desertAsiaRoll == 6)
				return("deccan_grassy_Dirt_a");
			if (desertAsiaRoll == 7)
				return("deccan_grassy_dirt_a_noprops");
			if (desertAsiaRoll == 8)
				return("mongolia_desert");
			if (desertAsiaRoll == 9)
				return("mongolia_grass");
			if (desertAsiaRoll == 10)
				return("mongolia_grass_a");
			if (desertAsiaRoll == 11)
				return("mongolia_grass_b");
			if (desertAsiaRoll == 12)
				return("desertforestflr_cal");
			if (desertAsiaRoll == 13)
				return("grandcanyon_rock_7");
			return("grandcanyon_frstflr");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("sonora_dirt");
			if (desertNorthAmericaRoll == 2)
				return("california desert");
			if (desertNorthAmericaRoll == 3)
				return("california_desert");
			if (desertNorthAmericaRoll == 4)
				return("california_desert0");
			if (desertNorthAmericaRoll == 5)
				return("california_desert2");
			if (desertNorthAmericaRoll == 6)
				return("california_desert3");
			if (desertNorthAmericaRoll == 7)
				return("desertforestflr_cal");
			if (desertNorthAmericaRoll == 8)
				return("painteddesert_groundmix_1");
			if (desertNorthAmericaRoll == 9)
				return("painteddesert_groundmix_2");
			if (desertNorthAmericaRoll == 10)
				return("painteddesert_groundmix_4");
			if (desertNorthAmericaRoll == 11)
				return("grandcanyon_frstflr");
			if (desertNorthAmericaRoll == 12)
				return("grandcanyon_rock_7");
			if (desertNorthAmericaRoll == 13)
				return("texas_dirt");
			if (desertNorthAmericaRoll == 14)
				return("texas_dirt_Skirmish");
			if (desertNorthAmericaRoll == 15)
				return("texas_grass");
			if (desertNorthAmericaRoll == 16)
				return("texas grass");
			if (desertNorthAmericaRoll == 17)
				return("texas_grass_Skirmish");
			if (desertNorthAmericaRoll == 18)
				return("texas_grass_Skrimish");
			if (desertNorthAmericaRoll == 19)
				return("texas_cliff_top");
			return("texas_forest");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("africa savanna dirt");
			if (plainsAfricaRoll == 2)
				return("africa savanna forest");
			if (plainsAfricaRoll == 3)
				return("africa savanna grass");
			if (plainsAfricaRoll == 4)
				return("africa savanna grass dry");
			if (plainsAfricaRoll == 5)
				return("africa savanna sand");
			if (plainsAfricaRoll == 6)
				return("africa east dirt");
			if (plainsAfricaRoll == 7)
				return("africa east grass");
			if (plainsAfricaRoll == 8)
				return("africa east grass dry");
			if (plainsAfricaRoll == 9)
				return("Africa Desert Grass");
			return("africa desert grass medium");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("mongolia_grass");
			if (plainsAsiaRoll == 2)
				return("mongolia_grass_a");
			if (plainsAsiaRoll == 3)
				return("mongolia_grass_b");
			if (plainsAsiaRoll == 4)
				return("mongolia_forest");
			if (plainsAsiaRoll == 5)
				return("yellow_river_a");
			if (plainsAsiaRoll == 6)
				return("yellow_river_b");
			if (plainsAsiaRoll == 7)
				return("yellow_river_c");
			if (plainsAsiaRoll == 8)
				return("yellow_river_forest");
			if (plainsAsiaRoll == 9)
				return("Yellow_River_A");
			if (plainsAsiaRoll == 10)
				return("deccan_grass_a");
			if (plainsAsiaRoll == 11)
				return("Deccan_grass_a");
			if (plainsAsiaRoll == 12)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("italy_grass");
			if (plainsEuropeRoll == 2)
				return("italy_grass_dirt");
			if (plainsEuropeRoll == 3)
				return("italy_grass_dry");
			if (plainsEuropeRoll == 4)
				return("italy_grass_lush");
			if (plainsEuropeRoll == 5)
				return("italy_grass_medium");
			if (plainsEuropeRoll == 6)
				return("italy_grass_medium_dry");
			if (plainsEuropeRoll == 7)
				return("italy_north_grass");
			if (plainsEuropeRoll == 8)
				return("italy_north_dirt");
			if (plainsEuropeRoll == 9)
				return("danish_grass1");
			if (plainsEuropeRoll == 10)
				return("danish_grass2");
			if (plainsEuropeRoll == 11)
				return("danish_grass3");
			if (plainsEuropeRoll == 12)
				return("pampas_grass");
			return("pampas_grassy");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("great plains drygrass");
			if (plainsNorthAmericaRoll == 2)
				return("great plains grass");
			if (plainsNorthAmericaRoll == 3)
				return("Great Plains grass");
			if (plainsNorthAmericaRoll == 4)
				return("great plains grass01");
			if (plainsNorthAmericaRoll == 5)
				return("great plains forest");
			if (plainsNorthAmericaRoll == 6)
				return("Great Plains Forest");
			if (plainsNorthAmericaRoll == 7)
				return("texas grass");
			if (plainsNorthAmericaRoll == 8)
				return("texas_grass");
			if (plainsNorthAmericaRoll == 9)
				return("texas_grass_Skirmish");
			if (plainsNorthAmericaRoll == 10)
				return("texas_grass_Skrimish");
			if (plainsNorthAmericaRoll == 11)
				return("california_grass");
			if (plainsNorthAmericaRoll == 12)
				return("california_grassrocks");
			if (plainsNorthAmericaRoll == 13)
				return("carolina_grass");
			if (plainsNorthAmericaRoll == 14)
				return("carolina_grassier");
			return("carolina_grass_dry");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("andes_dirt_a");
			if (mountainSouthAmericaRoll == 2)
				return("andes_grass_a");
			if (mountainSouthAmericaRoll == 3)
				return("andes_grass_b");
			if (mountainSouthAmericaRoll == 4)
				return("araucania_dirt_b");
			if (mountainSouthAmericaRoll == 5)
				return("araucania_grass_a");
			if (mountainSouthAmericaRoll == 6)
				return("araucania_grass_b");
			if (mountainSouthAmericaRoll == 7)
				return("araucania_north_dirt_a");
			if (mountainSouthAmericaRoll == 8)
				return("araucania_north_forest");
			if (mountainSouthAmericaRoll == 9)
				return("araucania_north_grass_a");
			if (mountainSouthAmericaRoll == 10)
				return("araucania_north_grass_c");
			if (mountainSouthAmericaRoll == 11)
				return("araucania_snow_a");
			if (mountainSouthAmericaRoll == 12)
				return("araucania_snow_b");
			if (mountainSouthAmericaRoll == 13)
				return("araucania_snow_c");
			if (mountainSouthAmericaRoll == 14)
				return("patagonia_dirt");
			return("patagonia_grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("himalayas_a");
			if (mountainAsiaRoll == 2)
				return("himalayas_b");
			if (mountainAsiaRoll == 3)
				return("himalayas_c");
			if (mountainAsiaRoll == 4)
				return("mongolia_grass");
			if (mountainAsiaRoll == 5)
				return("mongolia_grass_a");
			if (mountainAsiaRoll == 6)
				return("mongolia_grass_b");
			if (mountainAsiaRoll == 7)
				return("mongolia_desert");
			if (mountainAsiaRoll == 8)
				return("deccan_dirt_a");
			if (mountainAsiaRoll == 9)
				return("deccan_grass_a");
			if (mountainAsiaRoll == 10)
				return("Deccan_grass_a");
			if (mountainAsiaRoll == 11)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("italy_cliff_bottom");
			if (mountainEuropeRoll == 2)
				return("italy_cliff_top");
			if (mountainEuropeRoll == 3)
				return("italy_cliff_top_dry");
			if (mountainEuropeRoll == 4)
				return("italy_cliff_top_dry_grass");
			if (mountainEuropeRoll == 5)
				return("italy_cliff_top_grass");
			if (mountainEuropeRoll == 6)
				return("italy_snow");
			if (mountainEuropeRoll == 7)
				return("italy_snow_cliff");
			if (mountainEuropeRoll == 8)
				return("italy_snow_dirt");
			if (mountainEuropeRoll == 9)
				return("italy_snow_forest");
			if (mountainEuropeRoll == 10)
				return("italy_snow_grass");
			if (mountainEuropeRoll == 11)
				return("italy_snow_grass_blendb");
			if (mountainEuropeRoll == 12)
				return("pampas_dirt");
			return("pampas_forest_dirt");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("rockies_dirt_snow");
			if (mountainNorthAmericaRoll == 2)
				return("rockies_grass");
			if (mountainNorthAmericaRoll == 3)
				return("rockies_grass_forest");
			if (mountainNorthAmericaRoll == 4)
				return("rockies_grass_snow");
			if (mountainNorthAmericaRoll == 5)
				return("rockies_grass_snowa");
			if (mountainNorthAmericaRoll == 6)
				return("rockies_grass_snowb");
			if (mountainNorthAmericaRoll == 7)
				return("rockies_grass_snowc");
			if (mountainNorthAmericaRoll == 8)
				return("rockies_grass_snowd");
			if (mountainNorthAmericaRoll == 9)
				return("rockies_snow");
			if (mountainNorthAmericaRoll == 10)
				return("rockies_snow_forest");
			if (mountainNorthAmericaRoll == 11)
				return("rockies_snowa");
			if (mountainNorthAmericaRoll == 12)
				return("nwt_dirt");
			if (mountainNorthAmericaRoll == 13)
				return("nwt_grass_dirt");
			if (mountainNorthAmericaRoll == 14)
				return("nwt_grass1");
			return("nwt_grass2");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazon Dirt");
			if (wetlandSouthAmericaRoll == 2)
				return("Amazon Grass");
			if (wetlandSouthAmericaRoll == 3)
				return("amazon grass");
			if (wetlandSouthAmericaRoll == 4)
				return("amazon grass dirt");
			if (wetlandSouthAmericaRoll == 5)
				return("Amazon Grass Dirt");
			if (wetlandSouthAmericaRoll == 6)
				return("amazon grass medium");
			if (wetlandSouthAmericaRoll == 7)
				return("Amazon Grass Medium");
			if (wetlandSouthAmericaRoll == 8)
				return("orinoco grass");
			if (wetlandSouthAmericaRoll == 9)
				return("yucatan_grass");
			if (wetlandSouthAmericaRoll == 10)
				return("caribbean grass");
			if (wetlandSouthAmericaRoll == 11)
				return("Caribbean Ground 3");
			return("CaribbeanSkirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("borneo_grass_a");
			if (wetlandAsiaRoll == 2)
				return("borneo_grass_b");
			if (wetlandAsiaRoll == 3)
				return("borneo_sand_a");
			if (wetlandAsiaRoll == 4)
				return("borneo_underbrush");
			if (wetlandAsiaRoll == 5)
				return("indochina_grass_a");
			if (wetlandAsiaRoll == 6)
				return("indochina_underbrush");
			if (wetlandAsiaRoll == 7)
				return("ceylon_grass_a");
			if (wetlandAsiaRoll == 8)
				return("ceylon_sand_a");
			if (wetlandAsiaRoll == 9)
				return("deccan_grass_a");
			if (wetlandAsiaRoll == 10)
				return("Deccan_grass_a");
			if (wetlandAsiaRoll == 11)
				return("Deccan_Grass_A");
			if (wetlandAsiaRoll == 12)
				return("deccan_grass_b");
			if (wetlandAsiaRoll == 13)
				return("Deccan_Grass_B");
			if (wetlandAsiaRoll == 14)
				return("deccan_grassy_dirt_a");
			if (wetlandAsiaRoll == 15)
				return("deccan_grassy_Dirt_a");
			return("deccan_grassy_dirt_a_noprops");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean grass");
			if (wetlandIslandRoll == 2)
				return("Caribbean Ground 3");
			if (wetlandIslandRoll == 3)
				return("CaribbeanSkirmish");
			if (wetlandIslandRoll == 4)
				return("caribbeanSkirmish");
			if (wetlandIslandRoll == 5)
				return("california_shoregrass");
			if (wetlandIslandRoll == 6)
				return("carolina_marsh");
			if (wetlandIslandRoll == 7)
				return("bayou_grass");
			return("bayou_grass_skirmish");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("greatlakes_snow");
			if (coldEuropeRoll == 2)
				return("great_lakes_ice");
			if (coldEuropeRoll == 3)
				return("ground_ice1_gl");
			if (coldEuropeRoll == 4)
				return("winter_wonderland_ice");
			if (coldEuropeRoll == 5)
				return("winter_wonderland_middle_ice");
			if (coldEuropeRoll == 6)
				return("italy_snow");
			if (coldEuropeRoll == 7)
				return("italy_snow_cliff");
			if (coldEuropeRoll == 8)
				return("italy_snow_dirt");
			if (coldEuropeRoll == 9)
				return("italy_snow_forest");
			if (coldEuropeRoll == 10)
				return("italy_snow_grass");
			if (coldEuropeRoll == 11)
				return("italy_snow_grass_blendb");
			return("saguenay tundra");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("siberia_grass_snowb");
			if (coldAsiaRoll == 2)
				return("himalayas_a");
			if (coldAsiaRoll == 3)
				return("himalayas_b");
			if (coldAsiaRoll == 4)
				return("himalayas_c");
			if (coldAsiaRoll == 5)
				return("rockies_snow");
			if (coldAsiaRoll == 6)
				return("california_snowground");
			if (coldAsiaRoll == 7)
				return("california_snowground2");
			return("california_snowground3");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("yukon snow");
			if (coldNorthAmericaRoll == 2)
				return("yukon grass");
			if (coldNorthAmericaRoll == 3)
				return("greatlakes_snow");
			if (coldNorthAmericaRoll == 4)
				return("great_lakes_ice");
			if (coldNorthAmericaRoll == 5)
				return("ground_ice1_gl");
			if (coldNorthAmericaRoll == 6)
				return("rockies_snow");
			if (coldNorthAmericaRoll == 7)
				return("rockies_snow_forest");
			if (coldNorthAmericaRoll == 8)
				return("rockies_snowa");
			if (coldNorthAmericaRoll == 9)
				return("rockies_grass_snow");
			if (coldNorthAmericaRoll == 10)
				return("rockies_grass_snowa");
			if (coldNorthAmericaRoll == 11)
				return("rockies_grass_snowb");
			if (coldNorthAmericaRoll == 12)
				return("rockies_grass_snowc");
			if (coldNorthAmericaRoll == 13)
				return("rockies_grass_snowd");
			if (coldNorthAmericaRoll == 14)
				return("saguenay tundra");
			return("california_snowground");
		}
	}
	return("great plains drygrass");
}

int cbeShouldSetBaseTerrainMix(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);
	return(1);
}

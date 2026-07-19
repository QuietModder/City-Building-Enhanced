// CBE Lighting Sets

string cbeGetLightingSet(int biomeTheme = 1, int regionFlavor = 1, int selectionRoll = 0)
{
	int caveRoll = cbeResolveWorldResourceRoll(selectionRoll, 3);
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("alfheim");
		if (caveRoll == 2)
			return("spcjc4blight");
		return("spcjc4aflashback");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("NewEngland_Skirmish");
			if (forestEuropeRoll == 2)
				return("newengland_Skirmish");
			if (forestEuropeRoll == 3)
				return("new england");
			if (forestEuropeRoll == 4)
				return("new england start");
			if (forestEuropeRoll == 5)
				return("Pymouth_Skirmish");
			if (forestEuropeRoll == 6)
				return("adirondacks_skirmish");
			if (forestEuropeRoll == 7)
				return("florida_Skirmish");
			if (forestEuropeRoll == 8)
				return("Florida_Skirmish");
			if (forestEuropeRoll == 9)
				return("Florida_Winter_Skirmish");
			if (forestEuropeRoll == 10)
				return("fertile_crescent_skirmish");
			if (forestEuropeRoll == 11)
				return("Fertile_Crescent_Skirmish");
			if (forestEuropeRoll == 12)
				return("seville morning");
			if (forestEuropeRoll == 13)
				return("ottoman morning");
			if (forestEuropeRoll == 14)
				return("Constantinople");
			if (forestEuropeRoll == 15)
				return("Great Lakes");
			return("GreatLakes_Summer_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("Honshu");
			if (forestAsiaRoll == 2)
				return("honshu_skirmish");
			if (forestAsiaRoll == 3)
				return("honshu_Skirmish");
			if (forestAsiaRoll == 4)
				return("Honshu_skirmish");
			if (forestAsiaRoll == 5)
				return("Honshu_Skirmish");
			if (forestAsiaRoll == 6)
				return("Hokkaido_Skirmish");
			if (forestAsiaRoll == 7)
				return("Hokkaido_skirmish");
			if (forestAsiaRoll == 8)
				return("japan_misty_morning");
			if (forestAsiaRoll == 9)
				return("Korea_Skirmish");
			if (forestAsiaRoll == 10)
				return("Manchuria_Skirmish");
			if (forestAsiaRoll == 11)
				return("Manchuria_skirmish");
			if (forestAsiaRoll == 12)
				return("yellow_river_dry");
			if (forestAsiaRoll == 13)
				return("yellow_river_dry_skirmish");
			if (forestAsiaRoll == 14)
				return("yellow_river_wet_skirmish");
			if (forestAsiaRoll == 15)
				return("Mongolia");
			if (forestAsiaRoll == 16)
				return("mongolia");
			if (forestAsiaRoll == 17)
				return("mongolia_skirmish");
			return("Mongolia_skirmish");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("Carolina_Skirmish");
			if (forestNorthAmericaRoll == 2)
				return("carolina_skirmish");
			if (forestNorthAmericaRoll == 3)
				return("carolina");
			if (forestNorthAmericaRoll == 4)
				return("carolina_Skirmish");
			if (forestNorthAmericaRoll == 5)
				return("NewEngland_Skirmish");
			if (forestNorthAmericaRoll == 6)
				return("newengland_Skirmish");
			if (forestNorthAmericaRoll == 7)
				return("Ozarks_Skirmish");
			if (forestNorthAmericaRoll == 8)
				return("Dakota_Skirmish");
			if (forestNorthAmericaRoll == 9)
				return("GreatPlains_Skirmish");
			if (forestNorthAmericaRoll == 10)
				return("High_Plains_Skirmish");
			if (forestNorthAmericaRoll == 11)
				return("California_Skirmish");
			if (forestNorthAmericaRoll == 12)
				return("california");
			if (forestNorthAmericaRoll == 13)
				return("Mexico_Skirmish");
			if (forestNorthAmericaRoll == 14)
				return("mexico_Skirmish");
			if (forestNorthAmericaRoll == 15)
				return("Great Lakes");
			if (forestNorthAmericaRoll == 16)
				return("GreatLakes_Summer_Skirmish");
			if (forestNorthAmericaRoll == 17)
				return("GreatLakes_Summer_skirmish");
			return("nwterritory");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("rm_afri_pepperCoast");
			if (jungleAfricaRoll == 2)
				return("rm_afri_congoBasin");
			if (jungleAfricaRoll == 3)
				return("rm_afri_ivorycoast");
			if (jungleAfricaRoll == 4)
				return("rm_afri_sudd");
			if (jungleAfricaRoll == 5)
				return("rm_afri_swahiliCoast");
			if (jungleAfricaRoll == 6)
				return("rm_afri_horn");
			if (jungleAfricaRoll == 7)
				return("rm_afri_greatRift");
			return("rm_afri_lakeChad");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo");
			if (jungleAsiaRoll == 2)
				return("Borneo");
			if (jungleAsiaRoll == 3)
				return("Borneo_Skirmish");
			if (jungleAsiaRoll == 4)
				return("borneo_skirmish");
			if (jungleAsiaRoll == 5)
				return("Indochina_Skirmish");
			if (jungleAsiaRoll == 6)
				return("Indonesia_Skirmish");
			if (jungleAsiaRoll == 7)
				return("Malaysia_Skirmish");
			if (jungleAsiaRoll == 8)
				return("Bengal_Skirmish");
			if (jungleAsiaRoll == 9)
				return("ceylon");
			if (jungleAsiaRoll == 10)
				return("ceylon_skirmish");
			if (jungleAsiaRoll == 11)
				return("deccan");
			if (jungleAsiaRoll == 12)
				return("deccan_skirmish");
			if (jungleAsiaRoll == 13)
				return("india_yic1a1");
			if (jungleAsiaRoll == 14)
				return("Punjab_Skirmish");
			return("punjab_skirmish");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("amazon");
			if (jungleSouthAmericaRoll == 2)
				return("Amazonia_Skirmish");
			if (jungleSouthAmericaRoll == 3)
				return("Orinoco_Skirmish");
			if (jungleSouthAmericaRoll == 4)
				return("rm_guianas");
			if (jungleSouthAmericaRoll == 5)
				return("Yucatan_Skirmish");
			if (jungleSouthAmericaRoll == 6)
				return("Yucatan_skirmish");
			if (jungleSouthAmericaRoll == 7)
				return("yucatan");
			if (jungleSouthAmericaRoll == 8)
				return("Gran_Chaco_Skirmish");
			if (jungleSouthAmericaRoll == 9)
				return("rm_panama");
			if (jungleSouthAmericaRoll == 10)
				return("rm_bahia");
			if (jungleSouthAmericaRoll == 11)
				return("rm_Bahia");
			if (jungleSouthAmericaRoll == 12)
				return("rm_minasGerais");
			if (jungleSouthAmericaRoll == 13)
				return("NthAraucaniaLight");
			if (jungleSouthAmericaRoll == 14)
				return("SthAraucaniaLight");
			return("tenochtitlan_sunrise");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("rm_afri_nileValley");
			if (desertAfricaRoll == 2)
				return("rm_afri_sahel");
			if (desertAfricaRoll == 3)
				return("rm_afri_lakeChad");
			if (desertAfricaRoll == 4)
				return("rm_afri_greatRift");
			if (desertAfricaRoll == 5)
				return("rm_afri_horn");
			if (desertAfricaRoll == 6)
				return("rm_afri_swahiliCoast");
			if (desertAfricaRoll == 7)
				return("rm_afri_ivorycoast");
			return("rm_afri_pepperCoast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("HimalayasUpper_skirmish");
			if (desertAsiaRoll == 2)
				return("Himalayas_skirmish");
			if (desertAsiaRoll == 3)
				return("himalayas");
			if (desertAsiaRoll == 4)
				return("Himalayas");
			if (desertAsiaRoll == 5)
				return("Punjab_Skirmish");
			if (desertAsiaRoll == 6)
				return("punjab_Skirmish");
			if (desertAsiaRoll == 7)
				return("punjab_skirmish");
			if (desertAsiaRoll == 8)
				return("Punjab_skirmish");
			if (desertAsiaRoll == 9)
				return("Fertile_Crescent_Skirmish");
			if (desertAsiaRoll == 10)
				return("fertile_crescent_skirmish");
			if (desertAsiaRoll == 11)
				return("ottoman morning");
			return("seville morning");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("Sonora_Skirmish");
			if (desertNorthAmericaRoll == 2)
				return("sonora_skirmish");
			if (desertNorthAmericaRoll == 3)
				return("sonora");
			if (desertNorthAmericaRoll == 4)
				return("Sonora");
			if (desertNorthAmericaRoll == 5)
				return("Baja_California_Skirmish");
			if (desertNorthAmericaRoll == 6)
				return("PaintedDesert_Skirmish");
			if (desertNorthAmericaRoll == 7)
				return("Texas_Skirmish");
			if (desertNorthAmericaRoll == 8)
				return("texas_skirmish");
			if (desertNorthAmericaRoll == 9)
				return("Texas");
			if (desertNorthAmericaRoll == 10)
				return("texas");
			if (desertNorthAmericaRoll == 11)
				return("California_Skirmish");
			if (desertNorthAmericaRoll == 12)
				return("california");
			return("Mexico_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("rm_afri_horn");
			if (plainsAfricaRoll == 2)
				return("rm_afri_lakeChad");
			if (plainsAfricaRoll == 3)
				return("rm_afri_swahiliCoast");
			if (plainsAfricaRoll == 4)
				return("rm_afri_sahel");
			if (plainsAfricaRoll == 5)
				return("rm_afri_greatRift");
			if (plainsAfricaRoll == 6)
				return("rm_afri_nileValley");
			if (plainsAfricaRoll == 7)
				return("rm_afri_pepperCoast");
			return("rm_afri_sudd");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("yellow_river_wet_skirmish");
			if (plainsAsiaRoll == 2)
				return("yellow_river_dry_skirmish");
			if (plainsAsiaRoll == 3)
				return("yellow_river_dry");
			if (plainsAsiaRoll == 4)
				return("Mongolia");
			if (plainsAsiaRoll == 5)
				return("mongolia");
			if (plainsAsiaRoll == 6)
				return("mongolia_skirmish");
			if (plainsAsiaRoll == 7)
				return("Mongolia_skirmish");
			if (plainsAsiaRoll == 8)
				return("Manchuria_Skirmish");
			if (plainsAsiaRoll == 9)
				return("Manchuria_skirmish");
			if (plainsAsiaRoll == 10)
				return("Punjab_Skirmish");
			if (plainsAsiaRoll == 11)
				return("punjab_skirmish");
			return("Korea_Skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("NewEngland_Skirmish");
			if (plainsEuropeRoll == 2)
				return("newengland_Skirmish");
			if (plainsEuropeRoll == 3)
				return("Pampas_Skirmish");
			if (plainsEuropeRoll == 4)
				return("Pampas");
			if (plainsEuropeRoll == 5)
				return("pampas");
			if (plainsEuropeRoll == 6)
				return("fertile_crescent_skirmish");
			if (plainsEuropeRoll == 7)
				return("Fertile_Crescent_Skirmish");
			if (plainsEuropeRoll == 8)
				return("Florida_Skirmish");
			if (plainsEuropeRoll == 9)
				return("GreatPlains_Skirmish");
			if (plainsEuropeRoll == 10)
				return("High_Plains_Skirmish");
			if (plainsEuropeRoll == 11)
				return("Dakota_Skirmish");
			if (plainsEuropeRoll == 12)
				return("Great Lakes");
			if (plainsEuropeRoll == 13)
				return("GreatLakes_Summer_Skirmish");
			return("ParallelRivers_Skirmish");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("GreatPlains_Skirmish");
			if (plainsNorthAmericaRoll == 2)
				return("High_Plains_Skirmish");
			if (plainsNorthAmericaRoll == 3)
				return("Dakota_Skirmish");
			if (plainsNorthAmericaRoll == 4)
				return("Texas_Skirmish");
			if (plainsNorthAmericaRoll == 5)
				return("texas_skirmish");
			if (plainsNorthAmericaRoll == 6)
				return("Texas");
			if (plainsNorthAmericaRoll == 7)
				return("texas");
			if (plainsNorthAmericaRoll == 8)
				return("Mexico_Skirmish");
			if (plainsNorthAmericaRoll == 9)
				return("mexico_Skirmish");
			if (plainsNorthAmericaRoll == 10)
				return("California_Skirmish");
			if (plainsNorthAmericaRoll == 11)
				return("california");
			if (plainsNorthAmericaRoll == 12)
				return("colorado_skirmish");
			if (plainsNorthAmericaRoll == 13)
				return("GreatLakes_Summer_Skirmish");
			return("ParallelRivers_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("Andes_Skirmish");
			if (mountainSouthAmericaRoll == 2)
				return("Gran_Chaco_Skirmish");
			if (mountainSouthAmericaRoll == 3)
				return("Patagonia_skirmish");
			if (mountainSouthAmericaRoll == 4)
				return("Patagonia_Skirmish");
			if (mountainSouthAmericaRoll == 5)
				return("patagonia");
			if (mountainSouthAmericaRoll == 6)
				return("Araucania Central");
			if (mountainSouthAmericaRoll == 7)
				return("Araucania_CentralDesert_Skirmish");
			if (mountainSouthAmericaRoll == 8)
				return("Araucania_NorthGrass_Skirmish");
			if (mountainSouthAmericaRoll == 9)
				return("Araucania_SouthSnow_Skirmish");
			if (mountainSouthAmericaRoll == 10)
				return("Pampas_Sierras_Skirmish");
			if (mountainSouthAmericaRoll == 11)
				return("Pampas_Sierras_Winter");
			return("SthAraucaniaLight");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("HimalayasUpper_skirmish");
			if (mountainAsiaRoll == 2)
				return("Himalayas_skirmish");
			if (mountainAsiaRoll == 3)
				return("himalayas");
			if (mountainAsiaRoll == 4)
				return("Himalayas");
			if (mountainAsiaRoll == 5)
				return("Kamchatka_Skirmish");
			if (mountainAsiaRoll == 6)
				return("Kamchatka_Winter_Skirmish");
			if (mountainAsiaRoll == 7)
				return("Manchuria_Skirmish");
			if (mountainAsiaRoll == 8)
				return("Manchuria_skirmish");
			if (mountainAsiaRoll == 9)
				return("Mongolia");
			if (mountainAsiaRoll == 10)
				return("mongolia");
			if (mountainAsiaRoll == 11)
				return("mongolia_skirmish");
			if (mountainAsiaRoll == 12)
				return("Mongolia_skirmish");
			return("Punjab_Skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("Cascade_Range_Skirmish");
			if (mountainEuropeRoll == 2)
				return("cascade_range_skirmish");
			if (mountainEuropeRoll == 3)
				return("Fertile_Crescent_Winter_Skirmish");
			if (mountainEuropeRoll == 4)
				return("Pampas_Sierras_Winter");
			if (mountainEuropeRoll == 5)
				return("GreatLakes_Winter_skirmish");
			if (mountainEuropeRoll == 6)
				return("GreatLakes_Winter_Skirmish");
			if (mountainEuropeRoll == 7)
				return("ArcticTerritories_Skirmish");
			if (mountainEuropeRoll == 8)
				return("ArcticTerritories_skirmish");
			if (mountainEuropeRoll == 9)
				return("Iceland");
			if (mountainEuropeRoll == 10)
				return("great lakes winter");
			if (mountainEuropeRoll == 11)
				return("Great Lakes Winter");
			return("WinterWonderLand");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("Rockie_Skirmish");
			if (mountainNorthAmericaRoll == 2)
				return("rockie_skirmish");
			if (mountainNorthAmericaRoll == 3)
				return("rockies");
			if (mountainNorthAmericaRoll == 4)
				return("Cascade_Range_Skirmish");
			if (mountainNorthAmericaRoll == 5)
				return("cascade_range_skirmish");
			if (mountainNorthAmericaRoll == 6)
				return("colorado_skirmish");
			if (mountainNorthAmericaRoll == 7)
				return("NorthwestTerritory_Skirmish");
			if (mountainNorthAmericaRoll == 8)
				return("nwterritory");
			if (mountainNorthAmericaRoll == 9)
				return("Yukon_Skirmish");
			if (mountainNorthAmericaRoll == 10)
				return("yukon_skirmish");
			if (mountainNorthAmericaRoll == 11)
				return("yukon");
			if (mountainNorthAmericaRoll == 12)
				return("Alaska_Skirmish");
			if (mountainNorthAmericaRoll == 13)
				return("ArcticTerritories_Skirmish");
			return("Saguenay_Winter_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazonia_Skirmish");
			if (wetlandSouthAmericaRoll == 2)
				return("Orinoco_Skirmish");
			if (wetlandSouthAmericaRoll == 3)
				return("rm_panama");
			if (wetlandSouthAmericaRoll == 4)
				return("rm_bahia");
			if (wetlandSouthAmericaRoll == 5)
				return("rm_Bahia");
			if (wetlandSouthAmericaRoll == 6)
				return("rm_minasGerais");
			if (wetlandSouthAmericaRoll == 7)
				return("Yucatan_Skirmish");
			if (wetlandSouthAmericaRoll == 8)
				return("Yucatan_skirmish");
			if (wetlandSouthAmericaRoll == 9)
				return("yucatan");
			if (wetlandSouthAmericaRoll == 10)
				return("caribbean");
			if (wetlandSouthAmericaRoll == 11)
				return("Caribbean_Skirmish");
			if (wetlandSouthAmericaRoll == 12)
				return("caribbean_skirmish");
			if (wetlandSouthAmericaRoll == 13)
				return("Hispaniola_Skirmish");
			if (wetlandSouthAmericaRoll == 14)
				return("carribean");
			return("Bayou_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("Bengal_Skirmish");
			if (wetlandAsiaRoll == 2)
				return("Malaysia_Skirmish");
			if (wetlandAsiaRoll == 3)
				return("Indochina_Skirmish");
			if (wetlandAsiaRoll == 4)
				return("Indonesia_Skirmish");
			if (wetlandAsiaRoll == 5)
				return("borneo");
			if (wetlandAsiaRoll == 6)
				return("Borneo");
			if (wetlandAsiaRoll == 7)
				return("Borneo_Skirmish");
			if (wetlandAsiaRoll == 8)
				return("borneo_skirmish");
			if (wetlandAsiaRoll == 9)
				return("ceylon");
			if (wetlandAsiaRoll == 10)
				return("ceylon_skirmish");
			if (wetlandAsiaRoll == 11)
				return("deccan");
			if (wetlandAsiaRoll == 12)
				return("deccan_skirmish");
			return("india_yic1a1");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("Caribbean_Skirmish");
			if (wetlandIslandRoll == 2)
				return("caribbean_skirmish");
			if (wetlandIslandRoll == 3)
				return("caribbean");
			if (wetlandIslandRoll == 4)
				return("carribean");
			if (wetlandIslandRoll == 5)
				return("Hispaniola_Skirmish");
			if (wetlandIslandRoll == 6)
				return("Florida_Skirmish");
			if (wetlandIslandRoll == 7)
				return("florida_Skirmish");
			if (wetlandIslandRoll == 8)
				return("Bayou_Skirmish");
			if (wetlandIslandRoll == 9)
				return("bayou");
			if (wetlandIslandRoll == 10)
				return("Bayou");
			if (wetlandIslandRoll == 11)
				return("age304_caribbean");
			if (wetlandIslandRoll == 12)
				return("306a_caribbean");
			return("307a_beach");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("ArcticTerritories_Skirmish");
			if (coldEuropeRoll == 2)
				return("ArcticTerritories_skirmish");
			if (coldEuropeRoll == 3)
				return("Iceland");
			if (coldEuropeRoll == 4)
				return("GreatLakes_Winter_skirmish");
			if (coldEuropeRoll == 5)
				return("GreatLakes_Winter_Skirmish");
			if (coldEuropeRoll == 6)
				return("great lakes winter");
			if (coldEuropeRoll == 7)
				return("Great Lakes Winter");
			if (coldEuropeRoll == 8)
				return("Cascade_Range_Skirmish");
			if (coldEuropeRoll == 9)
				return("Fertile_Crescent_Winter_Skirmish");
			if (coldEuropeRoll == 10)
				return("Pampas_Sierras_Winter");
			if (coldEuropeRoll == 11)
				return("WinterWonderLand");
			return("319a_snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("siberia_skirmish");
			if (coldAsiaRoll == 2)
				return("Kamchatka_Winter_Skirmish");
			if (coldAsiaRoll == 3)
				return("Kamchatka_Skirmish");
			if (coldAsiaRoll == 4)
				return("ArcticTerritories_Skirmish");
			if (coldAsiaRoll == 5)
				return("ArcticTerritories_skirmish");
			if (coldAsiaRoll == 6)
				return("Hokkaido_Skirmish");
			if (coldAsiaRoll == 7)
				return("Hokkaido_skirmish");
			if (coldAsiaRoll == 8)
				return("Alaska_Skirmish");
			return("319a_snow");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("Yukon_Skirmish");
			if (coldNorthAmericaRoll == 2)
				return("yukon_skirmish");
			if (coldNorthAmericaRoll == 3)
				return("yukon");
			if (coldNorthAmericaRoll == 4)
				return("Alaska_Skirmish");
			if (coldNorthAmericaRoll == 5)
				return("ArcticTerritories_Skirmish");
			if (coldNorthAmericaRoll == 6)
				return("ArcticTerritories_skirmish");
			if (coldNorthAmericaRoll == 7)
				return("GreatLakes_Winter_skirmish");
			if (coldNorthAmericaRoll == 8)
				return("GreatLakes_Winter_Skirmish");
			if (coldNorthAmericaRoll == 9)
				return("Saguenay_Winter_Skirmish");
			if (coldNorthAmericaRoll == 10)
				return("NorthwestTerritory_Skirmish");
			if (coldNorthAmericaRoll == 11)
				return("nwterritory");
			if (coldNorthAmericaRoll == 12)
				return("Cascade_Range_Skirmish");
			if (coldNorthAmericaRoll == 13)
				return("WinterWonderLand");
			return("319a_snow");
		}
	}
	return("Carolina_Skirmish");
}

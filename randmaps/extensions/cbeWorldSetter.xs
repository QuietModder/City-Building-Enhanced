// CBE World Setter

// ================================================================
// Base Terrain Mix
// ================================================================

string cbeGetBaseTerrainMix(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1)
{
	int terrainRoll = rmRandInt(1, 5);

	if (biomeTheme == cbeBiomeCave())
		return("great plains drygrass");
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (terrainRoll == 1)
				return("newengland_grass");
			if (terrainRoll == 2)
				return("italy_grass_lush");
			if (terrainRoll == 3)
				return("danish_grass1");
			if (terrainRoll == 4)
				return("italy_north_grass");
			return("danish_grass2");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("coastal_honshu_b");
			if (terrainRoll == 2)
				return("coastal_japan_b");
			if (terrainRoll == 3)
				return("coastal_japan_a");
			if (terrainRoll == 4)
				return("coastal_japan_c");
			return("coastal_japan_c");
		}
		if (terrainRoll == 1)
			return("carolina_grass");
		if (terrainRoll == 2)
			return("carolina_grassier");
		if (terrainRoll == 3)
			return("carolina_grass_dry");
		if (terrainRoll == 4)
			return("newengland_grass");
		return("greatlakes_grass");
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (terrainRoll == 1)
				return("africa rainforest grass");
			if (terrainRoll == 2)
				return("africa rainforest grass medium");
			if (terrainRoll == 3)
				return("africa rainforest grass dry");
			if (terrainRoll == 4)
				return("africa savanna forest");
			return("africa rainforest grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("borneo_grass_a");
			if (terrainRoll == 2)
				return("borneo_grass_b");
			if (terrainRoll == 3)
				return("indochina_grass_a");
			if (terrainRoll == 4)
				return("borneo_underbrush");
			return("borneo_sand_a");
		}
		if (geographyLandform == cbeGeoDelta())
		{
			if (terrainRoll == 1)
				return("bayou_grass_skirmish");
			if (terrainRoll == 2)
				return("bayou_forest");
			if (terrainRoll == 3)
				return("bayou_forest_02");
			if (terrainRoll == 4)
				return("bayou_grass");
			return("bayou_forest_02");
		}
		if (terrainRoll == 1)
			return("amazon grass");
		if (terrainRoll == 2)
			return("amazon grass medium");
		if (terrainRoll == 3)
			return("amazon grass dirt");
		if (terrainRoll == 4)
			return("orinoco grass");
		return("Amazon Grass Medium");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (terrainRoll == 1)
				return("africa desert sand");
			if (terrainRoll == 2)
				return("africa desert grass dry");
			if (terrainRoll == 3)
				return("Africa Desert Grass Medium");
			if (terrainRoll == 4)
				return("africa desert rock");
			return("africa desert grass mud blend");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("himalayas_a");
			if (terrainRoll == 2)
				return("himalayas_b");
			if (terrainRoll == 3)
				return("himalayas_c");
			if (terrainRoll == 4)
				return("deccan_dirt_a");
			return("himalayas_a");
		}
		if (geographyLandform == cbeGeoCanyonlands())
		{
			if (terrainRoll == 1)
				return("california desert");
			if (terrainRoll == 2)
				return("painteddesert_groundmix_1");
			if (terrainRoll == 3)
				return("painteddesert_groundmix_4");
			if (terrainRoll == 4)
				return("grandcanyon_frstflr");
			return("california_desert2");
		}
		if (terrainRoll == 1)
			return("sonora_dirt");
		if (terrainRoll == 2)
			return("california desert");
		if (terrainRoll == 3)
			return("california_desert0");
		if (terrainRoll == 4)
			return("texas_dirt_Skirmish");
		return("painteddesert_groundmix_4");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (terrainRoll == 1)
				return("africa savanna grass dry");
			if (terrainRoll == 2)
				return("africa savanna dirt");
			if (terrainRoll == 3)
				return("africa savanna grass");
			if (terrainRoll == 4)
				return("africa east grass");
			return("africa east grass dry");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("mongolia_grass");
			if (terrainRoll == 2)
				return("mongolia_grass_a");
			if (terrainRoll == 3)
				return("mongolia_grass_b");
			if (terrainRoll == 4)
				return("yellow_river_a");
			return("yellow_river_b");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (terrainRoll == 1)
				return("italy_grass");
			if (terrainRoll == 2)
				return("italy_grass_medium");
			if (terrainRoll == 3)
				return("italy_grass_dry");
			if (terrainRoll == 4)
				return("italy_grass_medium_dry");
			return("italy_north_grass");
		}
		if (terrainRoll == 1)
			return("great plains drygrass");
		if (terrainRoll == 2)
			return("great plains drygrass");
		if (terrainRoll == 3)
			return("great plains grass01");
		if (terrainRoll == 4)
			return("texas_grass");
		return("great plains grass");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (terrainRoll == 1)
				return("andes_grass_a");
			if (terrainRoll == 2)
				return("andes_grass_b");
			if (terrainRoll == 3)
				return("andes_dirt_a");
			if (terrainRoll == 4)
				return("araucania_north_grass_a");
			return("araucania_north_grass_c");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("himalayas_b");
			if (terrainRoll == 2)
				return("himalayas_c");
			if (terrainRoll == 3)
				return("himalayas_a");
			if (terrainRoll == 4)
				return("mongolia_grass_b");
			return("nwt_grass2");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (terrainRoll == 1)
				return("italy_cliff_top_grass");
			if (terrainRoll == 2)
				return("italy_snow_grass_blendb");
			if (terrainRoll == 3)
				return("italy_snow");
			if (terrainRoll == 4)
				return("italy_snow_dirt");
			return("italy_snow_cliff");
		}
		if (terrainRoll == 1)
			return("rockies_grass");
		if (terrainRoll == 2)
			return("rockies_grass_snowa");
		if (terrainRoll == 3)
			return("rockies_grass_snowb");
		if (terrainRoll == 4)
			return("nwt_grass1");
		return("nwt_grass2");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (geographyLandform == cbeGeoDelta())
		{
			if (terrainRoll == 1)
				return("bayou_grass_skirmish");
			if (terrainRoll == 2)
				return("bayou_forest_02");
			if (terrainRoll == 3)
				return("carolina_marsh");
			if (terrainRoll == 4)
				return("bayou_grass");
			return("bayou_forest");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (terrainRoll == 1)
				return("amazon grass");
			if (terrainRoll == 2)
				return("amazon grass dirt");
			if (terrainRoll == 3)
				return("orinoco grass");
			if (terrainRoll == 4)
				return("caribbean grass");
			return("amazon grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("deccan_grass_b");
			if (terrainRoll == 2)
				return("deccan_grass_a");
			if (terrainRoll == 3)
				return("ceylon_grass_a");
			if (terrainRoll == 4)
				return("indochina_grass_a");
			return("ceylon_sand_a");
		}
		if (terrainRoll == 1)
			return("caribbean grass");
		if (terrainRoll == 2)
			return("caribbeanSkirmish");
		if (terrainRoll == 3)
			return("california_shoregrass");
		if (terrainRoll == 4)
			return("carolina_marsh");
		return("caribbeanSkirmish");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (terrainRoll == 1)
				return("greatlakes_snow");
			if (terrainRoll == 2)
				return("rockies_grass_snowb");
			if (terrainRoll == 3)
				return("italy_snow_grass_blendb");
			if (terrainRoll == 4)
				return("saguenay tundra");
			return("italy_snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (terrainRoll == 1)
				return("siberia_grass_snowb");
			if (terrainRoll == 2)
				return("rockies_snow");
			if (terrainRoll == 3)
				return("california_snowground");
			if (terrainRoll == 4)
				return("araucania_snow_a");
			return("california_snowground2");
		}
		if (terrainRoll == 1)
			return("yukon snow");
		if (terrainRoll == 2)
			return("yukon grass");
		if (terrainRoll == 3)
			return("greatlakes_snow");
		if (terrainRoll == 4)
			return("rockies_grass_snow");
		return("saguenay tundra");
	}
	return("great plains drygrass");
}

int cbeShouldSetBaseTerrainMix(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);
	return(1);
}

// ================================================================
// Base Terrain
// ================================================================

string cbeGetBaseTerrain(int biomeTheme = 1, int regionFlavor = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return("cave\cave_ground5");
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
			return("new_england\ground4_ne");
		if (regionFlavor == cbeRegionAsia())
			return("coastal_japan\ground_grass2_co_japan");
		return("carolinas\grass4");
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("AfricaRainforest\ground_grass1_afriRainforest");
		if (regionFlavor == cbeRegionAsia())
			return("borneo\ground_sand3_borneo");
		if (regionFlavor == cbeRegionSouthAmerica())
			return("amazon\ground4_ama");
		return("amazon\ground4_ama");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("AfricaDesert\ground_dirt1_afriDesert");
		if (regionFlavor == cbeRegionAsia())
			return("himalayas\ground_dirt2_himal");
		return("sonora\ground2_son");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("AfricaSavanna\ground_rock1_afriSavanna");
		if (regionFlavor == cbeRegionAsia())
			return("Mongolia\ground_grass1_mongol");
		if (regionFlavor == cbeRegionEurope())
			return("pampas\ground5_pam");
		return("great_plains\ground1_gp");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
			return("andes\ground10_and");
		if (regionFlavor == cbeRegionAsia())
			return("himalayas\ground_dirt2_himal");
		if (regionFlavor == cbeRegionEurope())
			return("pampas\ground5_pam");
		return("rockies\groundsnow1_roc");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
			return("amazon\ground4_ama");
		if (regionFlavor == cbeRegionAsia())
			return("Deccan\ground_grass2_deccan");
		return("caribbean\ground1_crb");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
			return("great_lakes\ground_snow2_gl");
		if (regionFlavor == cbeRegionAsia())
			return("yukon\ground8_yuk");
		return("yukon\ground1_yuk");
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

string cbeGetPrimaryMapType(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return("land");
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
			return("newEngland");
		if (regionFlavor == cbeRegionAsia())
			return("Japan");
		return("carolina");
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("sahara");
		if (regionFlavor == cbeRegionAsia())
			return("borneo");
		if (geographyLandform == cbeGeoDelta())
			return("bayou");
		return("orinoco");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("sahara");
		if (regionFlavor == cbeRegionAsia())
			return("silkRoad3");
		return("sonora");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("sahara");
		if (regionFlavor == cbeRegionAsia())
			return("yellowRiver");
		if (regionFlavor == cbeRegionEurope())
			return("lostEU");
		return("greatPlains");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
			return("andes");
		if (regionFlavor == cbeRegionAsia())
			return("silkRoad3");
		if (regionFlavor == cbeRegionEurope())
			return("lostEU");
		return("rockies");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (geographyLandform == cbeGeoDelta())
			return("bayou");
		if (regionFlavor == cbeRegionSouthAmerica())
			return("amazonia");
		if (regionFlavor == cbeRegionAsia())
			return("deccan");
		return("caribbean");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
			return("rockies");
		if (regionFlavor == cbeRegionAsia())
			return("siberia");
		return("yukon");
	}
	return("carolina");
}

string cbeGetSecondaryMapType(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeJungle())
		return("tropical");
	if (biomeTheme == cbeBiomeDesert())
		return("desert");
	if (biomeTheme == cbeBiomeColdNorth())
		return("snow");
	return("grass");
}

// ================================================================
// Lighting
// ================================================================

string cbeGetLightingSet(int biomeTheme = 1, int regionFlavor = 1)
{
	int lightRoll = rmRandInt(1, 5);

	if (biomeTheme == cbeBiomeCave())
		return("age302b_Cave");
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (lightRoll == 1)
				return("NewEngland_Skirmish");
			if (lightRoll == 2)
				return("Florida_Skirmish");
			if (lightRoll == 3)
				return("Pymouth_Skirmish");
			if (lightRoll == 4)
				return("adirondacks_skirmish");
			return("NewEngland_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("Honshu_Skirmish");
			if (lightRoll == 2)
				return("Hokkaido_skirmish");
			if (lightRoll == 3)
				return("Korea_Skirmish");
			if (lightRoll == 4)
				return("japan_misty_morning");
			return("Korea_Skirmish");
		}
		if (lightRoll == 1)
			return("Carolina_Skirmish");
		if (lightRoll == 2)
			return("NewEngland_Skirmish");
		if (lightRoll == 3)
			return("Ozarks_Skirmish");
		if (lightRoll == 4)
			return("Dakota_Skirmish");
		return("Carolina_Skirmish");
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (lightRoll == 1)
				return("rm_afri_pepperCoast");
			if (lightRoll == 2)
				return("rm_afri_congoBasin");
			if (lightRoll == 3)
				return("rm_afri_ivorycoast");
			if (lightRoll == 4)
				return("rm_afri_sudd");
			return("rm_afri_pepperCoast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("borneo_skirmish");
			if (lightRoll == 2)
				return("Indochina_Skirmish");
			if (lightRoll == 3)
				return("Malaysia_Skirmish");
			if (lightRoll == 4)
				return("Indonesia_Skirmish");
			return("borneo_skirmish");
		}
		if (lightRoll == 1)
			return("Orinoco_Skirmish");
		if (lightRoll == 2)
			return("rm_guianas");
		if (lightRoll == 3)
			return("Amazonia_Skirmish");
		if (lightRoll == 4)
			return("Yucatan_skirmish");
		return("Orinoco_Skirmish");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (lightRoll == 1)
				return("rm_afri_nileValley");
			if (lightRoll == 2)
				return("rm_afri_sahel");
			if (lightRoll == 3)
				return("rm_afri_lakeChad");
			if (lightRoll == 4)
				return("rm_afri_greatRift");
			return("rm_afri_nileValley");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("HimalayasUpper_skirmish");
			if (lightRoll == 2)
				return("Punjab_skirmish");
			if (lightRoll == 3)
				return("Himalayas_skirmish");
			if (lightRoll == 4)
				return("Fertile_Crescent_Skirmish");
			return("HimalayasUpper_skirmish");
		}
		if (lightRoll == 1)
			return("Sonora_Skirmish");
		if (lightRoll == 2)
			return("Baja_California_Skirmish");
		if (lightRoll == 3)
			return("PaintedDesert_Skirmish");
		if (lightRoll == 4)
			return("Texas_Skirmish");
		return("Sonora_Skirmish");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (lightRoll == 1)
				return("rm_afri_horn");
			if (lightRoll == 2)
				return("rm_afri_lakeChad");
			if (lightRoll == 3)
				return("rm_afri_swahiliCoast");
			if (lightRoll == 4)
				return("rm_afri_sahel");
			return("rm_afri_horn");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("yellow_river_wet_skirmish");
			if (lightRoll == 2)
				return("Mongolia_skirmish");
			if (lightRoll == 3)
				return("Manchuria_skirmish");
			if (lightRoll == 4)
				return("yellow_river_dry_skirmish");
			return("yellow_river_wet_skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (lightRoll == 1)
				return("NewEngland_Skirmish");
			if (lightRoll == 2)
				return("Honshu_Skirmish");
			if (lightRoll == 3)
				return("Pampas_Skirmish");
			if (lightRoll == 4)
				return("Fertile_Crescent_Skirmish");
			return("NewEngland_Skirmish");
		}
		if (lightRoll == 1)
			return("GreatPlains_Skirmish");
		if (lightRoll == 2)
			return("High_Plains_Skirmish");
		if (lightRoll == 3)
			return("Dakota_Skirmish");
		if (lightRoll == 4)
			return("Texas_Skirmish");
		return("GreatPlains_Skirmish");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (lightRoll == 1)
				return("Andes_Skirmish");
			if (lightRoll == 2)
				return("Gran_Chaco_Skirmish");
			if (lightRoll == 3)
				return("Patagonia_skirmish");
			if (lightRoll == 4)
				return("Araucania_SouthSnow_Skirmish");
			return("Andes_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("HimalayasUpper_skirmish");
			if (lightRoll == 2)
				return("Manchuria_skirmish");
			if (lightRoll == 3)
				return("Kamchatka_Skirmish");
			if (lightRoll == 4)
				return("Mongolia_skirmish");
			return("HimalayasUpper_skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (lightRoll == 1)
				return("Cascade_Range_Skirmish");
			if (lightRoll == 2)
				return("Fertile_Crescent_Winter_Skirmish");
			if (lightRoll == 3)
				return("Pampas_Sierras_Winter");
			if (lightRoll == 4)
				return("GreatLakes_Winter_skirmish");
			return("Cascade_Range_Skirmish");
		}
		if (lightRoll == 1)
			return("Rockie_Skirmish");
		if (lightRoll == 2)
			return("Cascade_Range_Skirmish");
		if (lightRoll == 3)
			return("colorado_skirmish");
		if (lightRoll == 4)
			return("NorthwestTerritory_Skirmish");
		return("Rockie_Skirmish");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (lightRoll == 1)
				return("Amazonia_Skirmish");
			if (lightRoll == 2)
				return("rm_panama");
			if (lightRoll == 3)
				return("rm_bahia");
			if (lightRoll == 4)
				return("rm_minasGerais");
			return("Amazonia_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("Bengal_Skirmish");
			if (lightRoll == 2)
				return("Malaysia_Skirmish");
			if (lightRoll == 3)
				return("ceylon_skirmish");
			if (lightRoll == 4)
				return("deccan_skirmish");
			return("Bengal_Skirmish");
		}
		if (lightRoll == 1)
			return("Caribbean_Skirmish");
		if (lightRoll == 2)
			return("Florida_Skirmish");
		if (lightRoll == 3)
			return("Hispaniola_Skirmish");
		if (lightRoll == 4)
			return("Bayou_Skirmish");
		return("Caribbean_Skirmish");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (lightRoll == 1)
				return("Cascade_Range_Skirmish");
			if (lightRoll == 2)
				return("GreatLakes_Winter_skirmish");
			if (lightRoll == 3)
				return("ArcticTerritories_Skirmish");
			if (lightRoll == 4)
				return("Saguenay_Winter_Skirmish");
			return("Cascade_Range_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (lightRoll == 1)
				return("siberia_skirmish");
			if (lightRoll == 2)
				return("Kamchatka_Winter_Skirmish");
			if (lightRoll == 3)
				return("ArcticTerritories_Skirmish");
			if (lightRoll == 4)
				return("Alaska_Skirmish");
			return("siberia_skirmish");
		}
		if (lightRoll == 1)
			return("Yukon_Skirmish");
		if (lightRoll == 2)
			return("Alaska_Skirmish");
		if (lightRoll == 3)
			return("ArcticTerritories_Skirmish");
		if (lightRoll == 4)
			return("GreatLakes_Winter_skirmish");
		return("Yukon_Skirmish");
	}
	return("Carolina_Skirmish");
}

// ================================================================
// Feature Resource References
// ================================================================

string cbeGetSeaType(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1)
{
	int seaRoll = rmRandInt(1, 8);

	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (seaRoll == 1)
				return("Amazon River Basin RM");
			if (seaRoll == 2)
				return("Amazon Rainforest River Muddy");
			if (seaRoll == 3)
				return("Amazon River Basin");
			if (seaRoll == 4)
				return("africa rainforest coast");
			if (seaRoll == 5)
				return("africa rainforest swamp");
			if (seaRoll == 6)
				return("Orinoco River");
			if (seaRoll == 7)
				return("ZP Amazon Aztec");
			return("Amazon River Basin RM");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (seaRoll == 1)
				return("borneo coast");
			if (seaRoll == 2)
				return("indochina coast");
			if (seaRoll == 3)
				return("Malaysia Water");
			if (seaRoll == 4)
				return("Borneo Water");
			if (seaRoll == 5)
				return("borneo water");
			if (seaRoll == 6)
				return("zp borneo lake");
			if (seaRoll == 7)
				return("ZP Borneo");
			return("borneo coast");
		}
		if (seaRoll == 1)
			return("Amazon River");
		if (seaRoll == 2)
			return("Amazon River Basin RM");
		if (seaRoll == 3)
			return("yucatan Coast");
		if (seaRoll == 4)
			return("Yucatan Coast Alt");
		if (seaRoll == 5)
			return("Orinoco River");
		if (seaRoll == 6)
			return("ZP Mexico River");
		if (seaRoll == 7)
			return("ZP Aztec Lake");
		return("Amazon River");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (seaRoll == 1)
				return("Africa Desert Beach");
			if (seaRoll == 2)
				return("Africa Savanna Coast");
			if (seaRoll == 3)
				return("california coast");
			if (seaRoll == 4)
				return("africa desert coast");
			if (seaRoll == 5)
				return("africa east lake");
			if (seaRoll == 6)
				return("ZP Dead Sea");
			if (seaRoll == 7)
				return("ZP Dead Sea Shallow");
			return("Africa Desert Beach");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (seaRoll == 1)
				return("deccan plateau river");
			if (seaRoll == 2)
				return("Manchuria Inland");
			if (seaRoll == 3)
				return("Bengal_Marsh");
			if (seaRoll == 4)
				return("Punjab River");
			if (seaRoll == 5)
				return("Deccan Light");
			if (seaRoll == 6)
				return("Deccan Plateau River");
			if (seaRoll == 7)
				return("Manchuria Coast");
			return("deccan plateau river");
		}
		if (seaRoll == 1)
			return("california coast");
		if (seaRoll == 2)
			return("Texas Pond");
		if (seaRoll == 3)
			return("texas pond rm");
		if (seaRoll == 4)
			return("Painted Desert Coast");
		if (seaRoll == 5)
			return("Painted Desert River");
		if (seaRoll == 6)
			return("Sonora Coast");
		if (seaRoll == 7)
			return("Texas Coast");
		return("california coast");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (seaRoll == 1)
				return("New England Coast");
			if (seaRoll == 2)
				return("atlantic coast");
			if (seaRoll == 3)
				return("Amsterdam");
			if (seaRoll == 4)
				return("Danish Coast");
			if (seaRoll == 5)
				return("Italian Coast");
			if (seaRoll == 6)
				return("Italian River");
			if (seaRoll == 7)
				return("ZP Danube River");
			return("new england coast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (seaRoll == 1)
				return("Coastal Honshu");
			if (seaRoll == 2)
				return("Coastal Japan");
			if (seaRoll == 3)
				return("Manchuria Coast");
			if (seaRoll == 4)
				return("Kamchatka Water");
			if (seaRoll == 5)
				return("Yellow River Wet Sans Fog");
			if (seaRoll == 6)
				return("Coastal Japan");
			if (seaRoll == 7)
				return("Manchuria Inland");
			return("Coastal Honshu");
		}
		if (seaRoll == 1)
			return("great lakes");
		if (seaRoll == 2)
			return("great lakes2");
		if (seaRoll == 3)
			return("carolinas coast");
		if (seaRoll == 4)
			return("New England Coast");
		if (seaRoll == 5)
			return("new england lake");
		if (seaRoll == 6)
			return("hudson bay");
		if (seaRoll == 7)
			return("Great Lakes");
		return("great lakes");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (seaRoll == 1)
				return("pampas river");
			if (seaRoll == 2)
				return("Pampas River RM");
			if (seaRoll == 3)
				return("Araucania Southern Coast");
			if (seaRoll == 4)
				return("Andes River");
			if (seaRoll == 5)
				return("Araucania Central Coast");
			if (seaRoll == 6)
				return("Araucania North Coast");
			if (seaRoll == 7)
				return("Patagonia bay");
			return("pampas river");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (seaRoll == 1)
				return("Manchuria Coast");
			if (seaRoll == 2)
				return("Manchuria Inland");
			if (seaRoll == 3)
				return("Coastal Honshu");
			if (seaRoll == 4)
				return("Kamchatka Water");
			if (seaRoll == 5)
				return("Punjab River");
			if (seaRoll == 6)
				return("Yellow River Wet Sans Fog");
			if (seaRoll == 7)
				return("Coastal Japan");
			return("Manchuria Coast");
		}
		if (seaRoll == 1)
			return("Yukon River");
		if (seaRoll == 2)
			return("NW Territory River");
		if (seaRoll == 3)
			return("Rockies Lake Ice");
		if (seaRoll == 4)
			return("Rockies Lake");
		if (seaRoll == 5)
			return("saguenay lake");
		if (seaRoll == 6)
			return("Northwest Territory Water");
		if (seaRoll == 7)
			return("Yukon River4");
		return("Yukon River");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (geographyLandform == cbeGeoDelta())
		{
			if (seaRoll == 1)
				return("bayou skirmish2");
			if (seaRoll == 2)
				return("Bayou SPC");
			if (seaRoll == 3)
				return("bayou");
			if (seaRoll == 4)
				return("Bayou Skirmish2");
			if (seaRoll == 5)
				return("africa rainforest swamp");
			if (seaRoll == 6)
				return("Amazon Rainforest River Muddy");
			if (seaRoll == 7)
				return("ZP Mississippi River");
			return("bayou skirmish2");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (seaRoll == 1)
				return("Bengal_Marsh");
			if (seaRoll == 2)
				return("ceylon coast");
			if (seaRoll == 3)
				return("indochina Water");
			if (seaRoll == 4)
				return("Ceylon Coast");
			if (seaRoll == 5)
				return("Indochina Water");
			if (seaRoll == 6)
				return("ZP New Guinea");
			if (seaRoll == 7)
				return("ZP Melanesia");
			return("Bengal_Marsh");
		}
		if (seaRoll == 1)
			return("caribbean coast");
		if (seaRoll == 2)
			return("ZP Venice Lagoon");
		if (seaRoll == 3)
			return("ZP Hawaii Coast");
		if (seaRoll == 4)
			return("ZP Great Barrier Reef");
		if (seaRoll == 5)
			return("ZP Polynesian Coast");
		if (seaRoll == 6)
			return("ZP Torres Strait");
		if (seaRoll == 7)
			return("ZP Pacific Coast");
		return("caribbean coast");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (seaRoll == 1)
			return("Yukon River");
		if (seaRoll == 2)
			return("Alaskan Coast");
		if (seaRoll == 3)
			return("Great Lakes Ice2");
		if (seaRoll == 4)
			return("Great Lakes Ice");
		if (seaRoll == 5)
			return("great lakes ice3");
		if (seaRoll == 6)
			return("ZP Iceland Lake");
		if (seaRoll == 7)
			return("ZP Labrador Coast");
		return("Yukon River");
	}
	return("great lakes");
}

string cbeGetCliffType(int biomeTheme = 1, int regionFlavor = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return("cave");
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAsia())
			return("coastal japan");
		return("Yucatan");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("Painteddesert");
		if (regionFlavor == cbeRegionAsia())
			return("himalayas");
		return("sonora");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
			return("New England");
		if (regionFlavor == cbeRegionAsia())
			return("Coastal Honshu");
		return("Great Plains");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
			return("andes");
		if (regionFlavor == cbeRegionAsia())
			return("himalayas");
		return("rocky mountain2");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
		return("Caribbean");
	if (biomeTheme == cbeBiomeColdNorth())
		return("rocky mountain2");
	return("Great Plains");
}

string cbeGetForestType(int biomeTheme = 1, int regionFlavor = 1)
{
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("amazon rain forest");
		if (regionFlavor == cbeRegionAsia())
			return("Borneo Forest");
		return("amazon rain forest");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("dunes");
		if (regionFlavor == cbeRegionAsia())
			return("Himalayas Forest");
		return("california desert forest");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
			return("new england forest");
		if (regionFlavor == cbeRegionAsia())
			return("Coastal Japan Forest");
		return("great lakes forest");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
			return("Great Plains Grass Green");
		if (regionFlavor == cbeRegionAsia())
			return("Yellow River forest");
		return("Great Plains Forest");
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
			return("andes forest");
		if (regionFlavor == cbeRegionAsia())
			return("Himalayas Forest");
		return("NW Territory Forest");
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
		return("Caribbean Palm Forest Skirmish");
	if (biomeTheme == cbeBiomeColdNorth())
		return("yukon snow forest");
	return("great lakes forest");
}

// ================================================================
// Sea Level
// ================================================================

float cbeGetBaseSeaLevel(int biomeTheme = 1, int geographyLandform = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0.0);
	if (geographyLandform == cbeGeoRiverBasin())
		return(3.0);
	if (geographyLandform == cbeGeoDelta())
		return(2.0);
	if (geographyLandform == cbeGeoHarbor() || geographyLandform == cbeGeoPeninsula() || geographyLandform == cbeGeoIslandCoast())
		return(2.0);
	if (geographyLandform == cbeGeoFjord())
		return(4.0);
	return(0.0);
}

// ================================================================
// World Setup
// ================================================================

void cbeSetBaseWorld(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0, int hasCoast = 0, int hasTradeRoute = 0)
{
	rmSetWorldCircleConstraint(false);
	rmSetSeaLevel(cbeGetBaseSeaLevel(biomeTheme, geographyLandform));

	if (biomeTheme == cbeBiomeCave())
		rmSetMapElevationParameters(cElevTurbulence, 0.04, 2, 0.3, 4.0);
	else if (biomeTheme == cbeBiomeMountain() || geographyLandform == cbeGeoHighlandValley())
		rmSetMapElevationParameters(cElevTurbulence, 0.04, 3, 0.5, 8.0);
	else if (biomeTheme == cbeBiomeDesert() || geographyLandform == cbeGeoCanyonlands())
		rmSetMapElevationParameters(cElevTurbulence, 0.03, 3, 0.4, 6.0);
	else
		rmSetMapElevationParameters(cElevTurbulence, 0.02, 2, 0.4, 4.0);

	if (cbeShouldSetBaseTerrainMix(biomeTheme) == 1)
		rmSetBaseTerrainMix(cbeGetBaseTerrainMix(biomeTheme, regionFlavor, geographyLandform));
	rmTerrainInitialize(cbeGetBaseTerrain(biomeTheme, regionFlavor), cbeGetTerrainInitHeight(biomeTheme, geographyLandform));
	rmSetMapType(cbeGetPrimaryMapType(biomeTheme, regionFlavor, geographyLandform));
	rmSetMapType(cbeGetSecondaryMapType(biomeTheme));

	if (hasCoast == 1)
	{
		rmSetSeaType(cbeGetSeaType(biomeTheme, regionFlavor, geographyLandform));
		rmSetMapType("water");
	}
	else
		rmSetMapType("land");

	if (hasTradeRoute == 1)
		rmSetMapType("euroTradeRouteCapture");

	rmSetLightingSet(cbeGetLightingSet(biomeTheme, regionFlavor));
}

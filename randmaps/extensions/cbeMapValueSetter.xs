// CBE Map Value Setter

// ================================================================
// Biome Values
// ================================================================

int cbeBiomeForest(void)
{
	return(1);
}

int cbeBiomeJungle(void)
{
	return(2);
}

int cbeBiomeDesert(void)
{
	return(3);
}

int cbeBiomePlains(void)
{
	return(4);
}

int cbeBiomeMountain(void)
{
	return(5);
}

int cbeBiomeWetlandIsland(void)
{
	return(6);
}

int cbeBiomeColdNorth(void)
{
	return(7);
}

// ================================================================
// Region Values
// ================================================================

int cbeRegionNorthAmerica(void)
{
	return(1);
}

int cbeRegionEurope(void)
{
	return(2);
}

int cbeRegionAsia(void)
{
	return(3);
}

int cbeRegionSouthAmerica(void)
{
	return(4);
}

int cbeRegionAfrica(void)
{
	return(5);
}

int cbeRegionIsland(void)
{
	return(6);
}

// ================================================================
// Geography Values
// ================================================================

int cbeGeoInland(void)
{
	return(1);
}

int cbeGeoRiverBasin(void)
{
	return(2);
}

int cbeGeoDelta(void)
{
	return(3);
}

int cbeGeoHarbor(void)
{
	return(4);
}

int cbeGeoPeninsula(void)
{
	return(5);
}

int cbeGeoFjord(void)
{
	return(6);
}

int cbeGeoCanyonlands(void)
{
	return(7);
}

int cbeGeoHighlandValley(void)
{
	return(8);
}

int cbeGeoIslandCoast(void)
{
	return(9);
}

int cbeGeoModNone(void)
{
	return(0);
}

int cbeGeoModCliffCoast(void)
{
	return(1);
}

int cbeGeoModRiverCutValley(void)
{
	return(2);
}

int cbeGeoModMarshLowlands(void)
{
	return(3);
}

int cbeGeoModBrokenHighlands(void)
{
	return(4);
}

int cbeGeoModShelteredBay(void)
{
	return(5);
}

// ================================================================
// Map Feature Values
// ================================================================

int cbeRollMapFeature(int weight = 0)
{
	if (rmRandInt(1, 100) <= weight)
		return(1);
	return(0);
}

int cbeRollCityStates(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 30;
	if (regionFlavor == cbeRegionEurope())
		weight = weight + 20;
	else if (regionFlavor == cbeRegionSouthAmerica())
		weight = weight + 10;
	else if (regionFlavor == cbeRegionAfrica())
		weight = weight + 10;
	if (geographyLandform == cbeGeoInland())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

int cbeRollDistricts(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 20;
	if (regionFlavor == cbeRegionEurope())
		weight = weight + 15;
	if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoInland())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

int cbeRollFeatureVillages(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomePlains())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 5;
	return(cbeRollMapFeature(weight));
}

int cbeRollOutlawCamps(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 35;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 15;
	else if (biomeTheme == cbeBiomePlains())
		weight = weight + 10;
	if (regionFlavor == cbeRegionNorthAmerica())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

int cbeRollMerchantOutposts(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 30;
	if (geographyLandform == cbeGeoHarbor())
		weight = weight + 20;
	else if (geographyLandform == cbeGeoPeninsula())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoRiverBasin())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

// ================================================================
// Theme Selection
// ================================================================

int cbeChooseBiomeTheme(void)
{
	return(rmRandInt(1, 7));
}

int cbeChooseRegionFlavor(int biomeTheme = 1)
{
	int themeRoll = -1;

	if (biomeTheme == cbeBiomeForest())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeJungle())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionSouthAmerica());
		if (themeRoll == 2)
			return(cbeRegionAfrica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeDesert())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionAfrica());
		if (themeRoll == 2)
			return(cbeRegionAsia());
		return(cbeRegionNorthAmerica());
	}
	else if (biomeTheme == cbeBiomePlains())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		if (themeRoll == 3)
			return(cbeRegionAfrica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeMountain())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		if (themeRoll == 3)
			return(cbeRegionSouthAmerica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeWetlandIsland())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionSouthAmerica());
		if (themeRoll == 2)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 3)
			return(cbeRegionAsia());
		return(cbeRegionIsland());
	}

	themeRoll = rmRandInt(1, 3);
	if (themeRoll == 1)
		return(cbeRegionNorthAmerica());
	if (themeRoll == 2)
		return(cbeRegionEurope());
	return(cbeRegionAsia());
}

int cbeChooseGeographyLandform(int biomeTheme = 1, int regionFlavor = 1)
{
	int roll = rmRandInt(1, 100);

	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (roll <= 25)
			return(cbeGeoDelta());
		if (roll <= 45)
			return(cbeGeoHarbor());
		if (roll <= 65)
			return(cbeGeoPeninsula());
		if (roll <= 85)
			return(cbeGeoIslandCoast());
		return(cbeGeoRiverBasin());
	}
	else if (biomeTheme == cbeBiomeMountain() || biomeTheme == cbeBiomeColdNorth())
	{
		if (roll <= 25)
			return(cbeGeoHighlandValley());
		if (roll <= 45)
			return(cbeGeoFjord());
		if (roll <= 70)
			return(cbeGeoCanyonlands());
		if (roll <= 85)
			return(cbeGeoRiverBasin());
		return(cbeGeoInland());
	}
	else if (biomeTheme == cbeBiomeDesert())
	{
		if (roll <= 40)
			return(cbeGeoCanyonlands());
		if (roll <= 65)
			return(cbeGeoInland());
		if (roll <= 80)
			return(cbeGeoRiverBasin());
		if (roll <= 90)
			return(cbeGeoPeninsula());
		return(cbeGeoHarbor());
	}
	else if (biomeTheme == cbeBiomeJungle())
	{
		if (roll <= 30)
			return(cbeGeoRiverBasin());
		if (roll <= 50)
			return(cbeGeoDelta());
		if (roll <= 65)
			return(cbeGeoHarbor());
		if (roll <= 80)
			return(cbeGeoPeninsula());
		return(cbeGeoInland());
	}

	if (roll <= 25)
		return(cbeGeoInland());
	if (roll <= 45)
		return(cbeGeoRiverBasin());
	if (roll <= 60)
		return(cbeGeoHighlandValley());
	if (roll <= 75)
		return(cbeGeoHarbor());
	if (roll <= 88)
		return(cbeGeoPeninsula());
	return(cbeGeoCanyonlands());
}

int cbeChooseGeographyModifier(int geographyLandform = 1, int biomeTheme = 1, int regionFlavor = 1)
{
	int roll = rmRandInt(1, 100);

	if (geographyLandform == cbeGeoDelta())
	{
		if (roll <= 65)
			return(cbeGeoModMarshLowlands());
		if (roll <= 85)
			return(cbeGeoModShelteredBay());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoHarbor())
	{
		if (roll <= 45)
			return(cbeGeoModShelteredBay());
		if (roll <= 70)
			return(cbeGeoModCliffCoast());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoPeninsula())
	{
		if (roll <= 35)
			return(cbeGeoModCliffCoast());
		if (roll <= 60)
			return(cbeGeoModShelteredBay());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoFjord())
	{
		if (roll <= 70)
			return(cbeGeoModCliffCoast());
		return(cbeGeoModBrokenHighlands());
	}
	else if (geographyLandform == cbeGeoCanyonlands())
	{
		if (roll <= 45)
			return(cbeGeoModRiverCutValley());
		if (roll <= 75)
			return(cbeGeoModBrokenHighlands());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoHighlandValley())
	{
		if (roll <= 55)
			return(cbeGeoModRiverCutValley());
		if (roll <= 85)
			return(cbeGeoModBrokenHighlands());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoRiverBasin())
	{
		if (roll <= 45)
			return(cbeGeoModRiverCutValley());
		if (roll <= 70)
			return(cbeGeoModMarshLowlands());
		return(cbeGeoModNone());
	}

	if (roll <= 20)
		return(cbeGeoModBrokenHighlands());
	return(cbeGeoModNone());
}

// ================================================================
// Display Names
// ================================================================

string cbeGetBiomeName(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeJungle())
		return("Jungle");
	if (biomeTheme == cbeBiomeDesert())
		return("Desert");
	if (biomeTheme == cbeBiomePlains())
		return("Plains");
	if (biomeTheme == cbeBiomeMountain())
		return("Mountain");
	if (biomeTheme == cbeBiomeWetlandIsland())
		return("Wetland / Island");
	if (biomeTheme == cbeBiomeColdNorth())
		return("Cold North");
	return("Forest");
}

string cbeGetRegionName(int regionFlavor = 1)
{
	if (regionFlavor == cbeRegionEurope())
		return("Europe");
	if (regionFlavor == cbeRegionAsia())
		return("Asia");
	if (regionFlavor == cbeRegionSouthAmerica())
		return("Central / South America");
	if (regionFlavor == cbeRegionAfrica())
		return("Africa");
	if (regionFlavor == cbeRegionIsland())
		return("Island");
	return("North America");
}

string cbeGetGeographyLandformName(int geographyLandform = 1)
{
	if (geographyLandform == cbeGeoRiverBasin())
		return("River Basin");
	if (geographyLandform == cbeGeoDelta())
		return("Delta");
	if (geographyLandform == cbeGeoHarbor())
		return("Harbor");
	if (geographyLandform == cbeGeoPeninsula())
		return("Peninsula");
	if (geographyLandform == cbeGeoFjord())
		return("Fjord");
	if (geographyLandform == cbeGeoCanyonlands())
		return("Canyonlands");
	if (geographyLandform == cbeGeoHighlandValley())
		return("Highland Valley");
	if (geographyLandform == cbeGeoIslandCoast())
		return("Island Coast");
	return("Inland");
}

string cbeGetGeographyModifierName(int geographyModifier = 0)
{
	if (geographyModifier == cbeGeoModCliffCoast())
		return("Cliff Coast");
	if (geographyModifier == cbeGeoModRiverCutValley())
		return("River-Cut Valley");
	if (geographyModifier == cbeGeoModMarshLowlands())
		return("Marsh Lowlands");
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return("Broken Highlands");
	if (geographyModifier == cbeGeoModShelteredBay())
		return("Sheltered Bay");
	return("None");
}

// ================================================================
// Feature Weights
// ================================================================

int cbeFeatureWeightRiver(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 20;
	if (geographyLandform == cbeGeoCanyonlands())
		weight = weight + 15;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHighlandValley())
		weight = weight + 10;
	return(weight);
}

int cbeFeatureWeightCliffs(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 40;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeMountain())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 10;
	if (geographyLandform == cbeGeoPeninsula())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	return(weight);
}

int cbeFeatureWeightMountains(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 30;
	if (biomeTheme == cbeBiomeMountain())
		weight = weight + 30;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 15;
	if (geographyLandform == cbeGeoCanyonlands())
		weight = weight + 10;
	return(weight);
}

int cbeFeatureWeightCaves(int biomeTheme = 1)
{
	int weight = 25;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeMountain())
		weight = weight + 15;
	return(weight);
}

int cbeFeatureWeightCoast(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int weight = 25;
	if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 35;
	if (geographyLandform == cbeGeoRiverBasin())
		weight = weight + 10;
	return(weight);
}

int cbeFeatureWeightDenseWilds(int biomeTheme = 1)
{
	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 30;
	else if (biomeTheme == cbeBiomeDesert())
		weight = weight - 25;
	else if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 5;
	return(weight);
}

int cbeFeatureWeightRuins(int biomeTheme = 1)
{
	int weight = 35;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 15;
	return(weight);
}

int cbeRollFeatureEnabled(int weight = 0)
{
	if (rmRandInt(1, 100) <= weight)
		return(1);
	return(0);
}

// ================================================================
// Required Feature Flags
// ================================================================

int cbeGeographyRequiresRiver(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoRiverBasin())
		return(1);
	if (geographyLandform == cbeGeoDelta())
		return(1);
	if (geographyModifier == cbeGeoModRiverCutValley())
		return(1);
	return(0);
}

int cbeGeographyRequiresCoast(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoDelta())
		return(1);
	if (geographyLandform == cbeGeoHarbor())
		return(1);
	if (geographyLandform == cbeGeoPeninsula())
		return(1);
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoIslandCoast())
		return(1);
	if (geographyModifier == cbeGeoModCliffCoast())
		return(1);
	if (geographyModifier == cbeGeoModShelteredBay())
		return(1);
	return(0);
}

int cbeGeographyRequiresCliffs(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoCanyonlands())
		return(1);
	if (geographyLandform == cbeGeoHighlandValley())
		return(1);
	if (geographyModifier == cbeGeoModCliffCoast())
		return(1);
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return(1);
	return(0);
}

int cbeGeographyRequiresMountains(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoHighlandValley())
		return(1);
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return(1);
	return(0);
}

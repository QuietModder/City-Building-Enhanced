// CBE Theme Model

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

int cbeFeatureWeightRiver(int biomeTheme = 1)
{
	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 20;
	return(weight);
}

int cbeFeatureWeightCliffs(int biomeTheme = 1)
{
	int weight = 40;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeMountain())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 10;
	return(weight);
}

int cbeFeatureWeightMountains(int biomeTheme = 1)
{
	int weight = 30;
	if (biomeTheme == cbeBiomeMountain())
		weight = weight + 30;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 15;
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

int cbeFeatureWeightCoast(int biomeTheme = 1)
{
	int weight = 25;
	if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 35;
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

int cbeRouteRiverNone(void)
{
	return(0);
}

int cbeRouteRiverParallelOffset(void)
{
	return(2);
}

int cbeRouteMesaNone(void)
{
	return(0);
}

int cbeRouteMesaCutsPass(void)
{
	return(1);
}

int cbeRouteMesaSkirts(void)
{
	return(2);
}

int cbeRouteDenseWildsNone(void)
{
	return(0);
}

int cbeRollRouteRiverRelationship(int hasTradeRoute = 1, int hasRiver = 0)
{
	if (hasTradeRoute == 1 && hasRiver == 1)
		return(rmRandInt(1, 3));
	return(cbeRouteRiverNone());
}

int cbeRollRouteMesaRelationship(int hasTradeRoute = 1, int hasCliffs = 0, int hasMountains = 0)
{
	int roll = 0;
	if (hasTradeRoute == 1 && (hasCliffs == 1 || hasMountains == 1))
	{
		roll = rmRandInt(1, 100);
		if (roll <= 35)
			return(cbeRouteMesaCutsPass());
		if (roll <= 70)
			return(cbeRouteMesaSkirts());
		return(3);
	}
	return(cbeRouteMesaNone());
}

int cbeRollRouteDenseWildsRelationship(int hasTradeRoute = 1, int hasDenseWilds = 0)
{
	int roll = 0;
	if (hasTradeRoute == 1 && hasDenseWilds == 1)
	{
		roll = rmRandInt(1, 100);
		if (roll <= 45)
			return(1);
		if (roll <= 65)
			return(2);
		return(3);
	}
	return(cbeRouteDenseWildsNone());
}

string cbeGetRouteRiverRelationshipName(int relationship = 0)
{
	if (relationship == 1)
		return("Perpendicular");
	if (relationship == 2)
		return("Parallel Offset");
	if (relationship == 3)
		return("Separate Parallel");
	return("None");
}

string cbeGetRouteMesaRelationshipName(int relationship = 0)
{
	if (relationship == 1)
		return("Cuts Pass");
	if (relationship == 2)
		return("Skirts");
	if (relationship == 3)
		return("Avoids");
	return("None");
}

string cbeGetRouteDenseWildsRelationshipName(int relationship = 0)
{
	if (relationship == 1)
		return("Borders");
	if (relationship == 2)
		return("Cuts Path");
	if (relationship == 3)
		return("Avoids");
	return("None");
}

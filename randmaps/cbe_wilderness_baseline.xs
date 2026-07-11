// CBE Wilderness Baseline
// Stable baseline with Biome Theme + Region Flavor selection.
// No rogue camps, no Bestiary, no custom treasures.

int TeamNum = cNumberTeams;
int PlayerNum = cNumberNonGaiaPlayers;
int numPlayer = cNumberPlayers;

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

void main(void)
{
	rmSetStatusText("", 0.01);

	// ================================================================
	// Theme Model
	// ================================================================

	// Biome IDs.
	int cbeBiomeForest = 1;
	int cbeBiomeJungle = 2;
	int cbeBiomeDesert = 3;
	int cbeBiomePlains = 4;
	int cbeBiomeMountain = 5;
	int cbeBiomeWetlandIsland = 6;
	int cbeBiomeColdNorth = 7;

	// Region flavor IDs.
	int cbeRegionNorthAmerica = 1;
	int cbeRegionEurope = 2;
	int cbeRegionAsia = 3;
	int cbeRegionSouthAmerica = 4;
	int cbeRegionAfrica = 5;
	int cbeRegionIsland = 6;

	int cbeBiomeTheme = rmRandInt(1, 7);
	int cbeRegionFlavor = cbeRegionNorthAmerica;
	int cbeThemeRoll = -1;
	string cbeBiomeName = "Forest";
	string cbeRegionName = "North America";

	// Pick compatible region pool.
	if (cbeBiomeTheme == cbeBiomeForest)
	{
		cbeBiomeName = "Forest";
		cbeThemeRoll = rmRandInt(1, 3);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionNorthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionEurope;
		else
			cbeRegionFlavor = cbeRegionAsia;
	}
	else if (cbeBiomeTheme == cbeBiomeJungle)
	{
		cbeBiomeName = "Jungle";
		cbeThemeRoll = rmRandInt(1, 3);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionSouthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionAfrica;
		else
			cbeRegionFlavor = cbeRegionAsia;
	}
	else if (cbeBiomeTheme == cbeBiomeDesert)
	{
		cbeBiomeName = "Desert";
		cbeThemeRoll = rmRandInt(1, 3);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionAfrica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionAsia;
		else
			cbeRegionFlavor = cbeRegionNorthAmerica;
	}
	else if (cbeBiomeTheme == cbeBiomePlains)
	{
		cbeBiomeName = "Plains";
		cbeThemeRoll = rmRandInt(1, 4);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionNorthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionEurope;
		else if (cbeThemeRoll == 3)
			cbeRegionFlavor = cbeRegionAfrica;
		else
			cbeRegionFlavor = cbeRegionAsia;
	}
	else if (cbeBiomeTheme == cbeBiomeMountain)
	{
		cbeBiomeName = "Mountain";
		cbeThemeRoll = rmRandInt(1, 4);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionNorthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionEurope;
		else if (cbeThemeRoll == 3)
			cbeRegionFlavor = cbeRegionSouthAmerica;
		else
			cbeRegionFlavor = cbeRegionAsia;
	}
	else if (cbeBiomeTheme == cbeBiomeWetlandIsland)
	{
		cbeBiomeName = "Wetland / Island";
		cbeThemeRoll = rmRandInt(1, 4);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionSouthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionNorthAmerica;
		else if (cbeThemeRoll == 3)
			cbeRegionFlavor = cbeRegionAsia;
		else
			cbeRegionFlavor = cbeRegionIsland;
	}
	else
	{
		cbeBiomeName = "Cold North";
		cbeThemeRoll = rmRandInt(1, 3);
		if (cbeThemeRoll == 1)
			cbeRegionFlavor = cbeRegionNorthAmerica;
		else if (cbeThemeRoll == 2)
			cbeRegionFlavor = cbeRegionEurope;
		else
			cbeRegionFlavor = cbeRegionAsia;
	}

	// Region label.
	if (cbeRegionFlavor == cbeRegionEurope)
		cbeRegionName = "Europe";
	else if (cbeRegionFlavor == cbeRegionAsia)
		cbeRegionName = "Asia";
	else if (cbeRegionFlavor == cbeRegionSouthAmerica)
		cbeRegionName = "Central / South America";
	else if (cbeRegionFlavor == cbeRegionAfrica)
		cbeRegionName = "Africa";
	else if (cbeRegionFlavor == cbeRegionIsland)
		cbeRegionName = "Island";

	// ================================================================
	// Map Setup
	// ================================================================

	// Wilderness player-tile curve.
	int playerTiles = 12500;
	if (rmGetIsTreaty() == true)
	{
		if (PlayerNum == 2)
			playerTiles = 16000;
		if (PlayerNum > 2)
			playerTiles = 13000;
		if (PlayerNum > 4)
			playerTiles = 10500;
		if (PlayerNum > 6)
			playerTiles = 8500;
	}
	else
	{
		if (PlayerNum == 2)
			playerTiles = 14000;
		if (PlayerNum > 2)
			playerTiles = 11000;
		if (PlayerNum > 4)
			playerTiles = 9000;
		if (PlayerNum > 6)
			playerTiles = 7200;
	}

	// Global map footprint multiplier.
	float cbeMapScale = 4.0;
	playerTiles = playerTiles * cbeMapScale;

	int size = 2.0 * sqrt(PlayerNum * playerTiles);
	rmEchoInfo("CBE Wilderness Baseline size = "+size+"m x "+size+"m");
	rmEchoInfo("CBE Biome Theme = "+cbeBiomeName);
	rmEchoInfo("CBE Region Flavor = "+cbeRegionName);
	rmSetMapSize(size, size);

	rmSetWorldCircleConstraint(false);
	rmSetSeaLevel(0.0);
	rmSetMapElevationParameters(cElevTurbulence, 0.1, 1, 0.0, 0.5);
	rmTerrainInitialize("grass", 0.0);
	rmSetMapType("carolina");
	rmSetMapType("grass");
	rmSetLightingSet("Carolina_Skirmish");

	chooseMercs();

	// ================================================================
	// Classes
	// ================================================================

	int classPlayer = rmDefineClass("player");
	int classStartingResource = rmDefineClass("startingResource");
	int classForest = rmDefineClass("Forest");
	rmDefineClass("starting settlement");
	rmDefineClass("startingUnit");

	// ================================================================
	// Constraints
	// ================================================================

	int avoidStartingResources = rmCreateClassDistanceConstraint("avoid starting resources", classStartingResource, 8.0);
	int avoidStartingResourcesShort = rmCreateClassDistanceConstraint("avoid starting resources short", classStartingResource, 4.0);
	int avoidImpassableLandShort = rmCreateTerrainDistanceConstraint("avoid impassable land short", "Land", false, 4.0);
	int avoidForestShort = rmCreateClassDistanceConstraint("avoid forest short", classForest, 8.0);

	rmSetStatusText("", 0.20);

	// ================================================================
	// Player Placement
	// ================================================================

	rmPlacePlayersCircular(0.34, 0.38, 0.0);

	for (i = 1; < numPlayer)
	{
		int playerAreaID = rmCreateArea("player area "+i);
		rmSetPlayerArea(i, playerAreaID);
		rmSetAreaSize(playerAreaID, 0.03, 0.03);
		rmSetAreaCoherence(playerAreaID, 1.0);
		rmSetAreaWarnFailure(playerAreaID, false);
		rmSetAreaLocPlayer(playerAreaID, i);
		rmSetAreaObeyWorldCircleConstraint(playerAreaID, false);
		rmBuildArea(playerAreaID);
	}

	rmSetStatusText("", 0.40);

	// ================================================================
	// Starting Object Definitions
	// ================================================================

	// TC or nomad wagon.
	int tcID = rmCreateObjectDef("player TC");
	if (rmGetNomadStart())
		rmAddObjectDefItem(tcID, "CoveredWagon", 1, 0.0);
	else
		rmAddObjectDefItem(tcID, "TownCenter", 1, 0.0);
	rmAddObjectDefToClass(tcID, classStartingResource);
	rmSetObjectDefMinDistance(tcID, 0.0);
	rmSetObjectDefMaxDistance(tcID, 0.0);

	// Starting units.
	int startingUnitsID = rmCreateStartingUnitsObjectDef(5.0);
	rmSetObjectDefMinDistance(startingUnitsID, 5.0);
	rmSetObjectDefMaxDistance(startingUnitsID, 12.0);
	rmAddObjectDefToClass(startingUnitsID, rmClassID("startingUnit"));
	rmAddObjectDefConstraint(startingUnitsID, avoidImpassableLandShort);

	// Starting resources.
	int playerMineID = rmCreateObjectDef("player mine");
	rmAddObjectDefItem(playerMineID, "mine", 1, 0.0);
	rmSetObjectDefMinDistance(playerMineID, 12.0);
	rmSetObjectDefMaxDistance(playerMineID, 14.0);
	rmAddObjectDefToClass(playerMineID, classStartingResource);
	rmAddObjectDefConstraint(playerMineID, avoidStartingResourcesShort);
	rmAddObjectDefConstraint(playerMineID, avoidImpassableLandShort);

	int playerHerdID = rmCreateObjectDef("starting herd");
	rmAddObjectDefItem(playerHerdID, "deer", 8, 3.0);
	rmSetObjectDefMinDistance(playerHerdID, 12.0);
	rmSetObjectDefMaxDistance(playerHerdID, 12.0);
	rmSetObjectDefCreateHerd(playerHerdID, true);
	rmAddObjectDefToClass(playerHerdID, classStartingResource);
	rmAddObjectDefConstraint(playerHerdID, avoidStartingResourcesShort);
	rmAddObjectDefConstraint(playerHerdID, avoidImpassableLandShort);

	int playerTreeID = rmCreateObjectDef("player trees");
	rmAddObjectDefItem(playerTreeID, "TreeCarolinaGrass", 6, 5.0);
	rmSetObjectDefMinDistance(playerTreeID, 16.0);
	rmSetObjectDefMaxDistance(playerTreeID, 20.0);
	rmAddObjectDefToClass(playerTreeID, classStartingResource);
	rmAddObjectDefToClass(playerTreeID, classForest);
	rmAddObjectDefConstraint(playerTreeID, avoidForestShort);
	rmAddObjectDefConstraint(playerTreeID, avoidStartingResources);
	rmAddObjectDefConstraint(playerTreeID, avoidImpassableLandShort);

	// ================================================================
	// Starting Object Placement
	// ================================================================

	for (i = 1; < numPlayer)
	{
		rmPlaceObjectDefAtLoc(tcID, i, rmPlayerLocXFraction(i), rmPlayerLocZFraction(i));
		vector tcLoc = rmGetUnitPosition(rmGetUnitPlacedOfPlayer(tcID, i));
		float tcX = rmXMetersToFraction(xsVectorGetX(tcLoc));
		float tcZ = rmZMetersToFraction(xsVectorGetZ(tcLoc));

		rmPlaceObjectDefAtLoc(startingUnitsID, i, tcX, tcZ);
		rmPlaceObjectDefAtLoc(playerMineID, 0, tcX, tcZ);
		rmPlaceObjectDefAtLoc(playerHerdID, 0, tcX, tcZ);
		rmPlaceObjectDefAtLoc(playerTreeID, 0, tcX, tcZ);
	}

	rmSetStatusText("", 1.00);
}

// CBE Wilderness Baseline
// Minimal load test. No themes, no rogue camps, no Bestiary, no custom treasures.

int TeamNum = cNumberTeams;
int PlayerNum = cNumberNonGaiaPlayers;
int numPlayer = cNumberPlayers;

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

void main(void)
{
	rmSetStatusText("", 0.01);

	int playerTiles = 9000;
	if (PlayerNum <= 2)
		playerTiles = 11000;
	else if (PlayerNum > 6)
		playerTiles = 8100;
	playerTiles = playerTiles * 4.0;

	int size = 2.0 * sqrt(PlayerNum * playerTiles);
	rmEchoInfo("CBE Wilderness Baseline size = "+size+"m x "+size+"m");
	rmSetMapSize(size, size);

	rmSetWorldCircleConstraint(false);
	rmSetSeaLevel(0.0);
	rmSetMapElevationParameters(cElevTurbulence, 0.1, 1, 0.0, 0.5);
	rmTerrainInitialize("grass", 0.0);
	rmSetMapType("carolina");
	rmSetMapType("grass");
	rmSetLightingSet("Carolina_Skirmish");

	chooseMercs();

	int classPlayer = rmDefineClass("player");
	int classStartingResource = rmDefineClass("startingResource");
	int classForest = rmDefineClass("Forest");
	rmDefineClass("starting settlement");
	rmDefineClass("startingUnit");

	int avoidStartingResources = rmCreateClassDistanceConstraint("avoid starting resources", classStartingResource, 8.0);
	int avoidStartingResourcesShort = rmCreateClassDistanceConstraint("avoid starting resources short", classStartingResource, 4.0);
	int avoidImpassableLandShort = rmCreateTerrainDistanceConstraint("avoid impassable land short", "Land", false, 4.0);
	int avoidForestShort = rmCreateClassDistanceConstraint("avoid forest short", classForest, 8.0);

	rmSetStatusText("", 0.20);

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

	int tcID = rmCreateObjectDef("player TC");
	if (rmGetNomadStart())
		rmAddObjectDefItem(tcID, "CoveredWagon", 1, 0.0);
	else
		rmAddObjectDefItem(tcID, "TownCenter", 1, 0.0);
	rmAddObjectDefToClass(tcID, classStartingResource);
	rmSetObjectDefMinDistance(tcID, 0.0);
	rmSetObjectDefMaxDistance(tcID, 0.0);

	int startingUnitsID = rmCreateStartingUnitsObjectDef(5.0);
	rmSetObjectDefMinDistance(startingUnitsID, 5.0);
	rmSetObjectDefMaxDistance(startingUnitsID, 12.0);
	rmAddObjectDefToClass(startingUnitsID, rmClassID("startingUnit"));
	rmAddObjectDefConstraint(startingUnitsID, avoidImpassableLandShort);

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

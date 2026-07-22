// CBE Starting Units

// ================================================================
// Starting Object Definitions
// ================================================================

void cbePlaceStartingUnits(int numPlayer = 2)
{
	int i = 0;

	int tcID = rmCreateObjectDef("player TC");
	if (rmGetNomadStart())
	{
		rmAddObjectDefItem(tcID, "CoveredWagon", 1, 0.0);
		rmSetObjectDefMinDistance(tcID, 0.0);
		rmSetObjectDefMaxDistance(tcID, 50.0);
	}
	else
	{
		rmAddObjectDefItem(tcID, "TownCenter", 1, 0.0);
		rmSetObjectDefMinDistance(tcID, 0.0);
		rmSetObjectDefMaxDistance(tcID, 0.0);
	}

	int startingUnitsID = -1;
	if (rmGetNomadStart())
	{
		startingUnitsID = rmCreateStartingUnitsObjectDef(50.0);
		rmSetObjectDefMinDistance(startingUnitsID, 5.0);
		rmSetObjectDefMaxDistance(startingUnitsID, 50.0);
	}
	else
	{
		startingUnitsID = rmCreateStartingUnitsObjectDef(5.0);
		rmSetObjectDefMinDistance(startingUnitsID, 5.0);
		rmSetObjectDefMaxDistance(startingUnitsID, 12.0);
	}

	for (i = 1; < numPlayer)
	{
		rmPlaceObjectDefAtLoc(tcID, i, rmPlayerLocXFraction(i), rmPlayerLocZFraction(i));
		rmPlaceObjectDefAtLoc(startingUnitsID, i, rmPlayerLocXFraction(i), rmPlayerLocZFraction(i));
	}
}

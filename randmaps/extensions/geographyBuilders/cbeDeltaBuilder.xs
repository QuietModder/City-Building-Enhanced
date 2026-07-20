// CBE Delta Builder

// ================================================================
// Delta
// ================================================================

void cbeBuildDeltaCoast(string waterType = "caribbean coast", int playerNum = 2)
{
	int coastalWaterID = rmCreateArea("delta coastal water");
	rmSetAreaWarnFailure(coastalWaterID, false);
	rmSetAreaObeyWorldCircleConstraint(coastalWaterID, false);
	rmSetAreaSize(coastalWaterID, 0.11, 0.14);
	rmSetAreaLocation(coastalWaterID, 0.97, 0.50);
	rmAddAreaInfluenceSegment(coastalWaterID, 1.00, 1.00, 0.92, 0.82);
	rmAddAreaInfluenceSegment(coastalWaterID, 0.92, 0.82, 0.89, 0.66);
	rmAddAreaInfluenceSegment(coastalWaterID, 0.89, 0.66, 0.94, 0.50);
	rmAddAreaInfluenceSegment(coastalWaterID, 0.94, 0.50, 0.90, 0.34);
	rmAddAreaInfluenceSegment(coastalWaterID, 0.90, 0.34, 0.93, 0.16);
	rmAddAreaInfluenceSegment(coastalWaterID, 0.93, 0.16, 1.00, 0.00);
	rmSetAreaWaterType(coastalWaterID, waterType);
	rmSetAreaCoherence(coastalWaterID, 0.65);
	rmSetAreaSmoothDistance(coastalWaterID, 16 + 2 * playerNum);
	rmBuildArea(coastalWaterID);
}

void cbeBuildDelta(int biomeTheme = 1, int regionFlavor = 1, int playerNum = 2, int seaTypeRoll = 0)
{
	string waterType = cbeGetSeaType(biomeTheme, regionFlavor, cbeGeoDelta(), seaTypeRoll);
	int riverWidth = 7 + playerNum / 2;
	int riverBankWidth = 6 + playerNum / 2;
	int branchWidth = 5 + playerNum / 2;

	// Low, blended riverbanks.
	rmSetRiverFoundationParams(12, 0.10);

	if (waterType == "None")
		waterType = "caribbean coast";
	cbeBuildDeltaCoast(waterType, playerNum);

	int mainRiverID = rmRiverCreate(-1, waterType, 3, 5, riverWidth, riverBankWidth);
	rmRiverAddWaypoint(mainRiverID, 0.00, rmRandFloat(0.58, 0.66));
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.18, 0.24), rmRandFloat(0.54, 0.62));
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.30, 0.36), rmRandFloat(0.56, 0.64));
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.42, 0.48), rmRandFloat(0.50, 0.58));
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.54, 0.60), rmRandFloat(0.48, 0.54));
	rmRiverAddWaypoint(mainRiverID, 0.68, 0.50);
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.76, 0.80), rmRandFloat(0.48, 0.52));
	rmRiverAddWaypoint(mainRiverID, rmRandFloat(0.86, 0.90), rmRandFloat(0.49, 0.53));
	rmRiverAddWaypoint(mainRiverID, 1.00, 0.52);
	rmRiverSetBankNoiseParams(mainRiverID, 0.06, 3, 1.5, 12.0, 0.667, 2.0);
	rmRiverBuild(mainRiverID);

	int northBranchID = rmRiverCreate(-1, waterType, 2, 4, branchWidth, riverBankWidth);
	rmRiverAddWaypoint(northBranchID, 0.58, 0.52);
	rmRiverAddWaypoint(northBranchID, 0.68, 0.50);
	rmRiverAddWaypoint(northBranchID, rmRandFloat(0.75, 0.79), rmRandFloat(0.54, 0.58));
	rmRiverAddWaypoint(northBranchID, rmRandFloat(0.84, 0.88), rmRandFloat(0.59, 0.63));
	rmRiverAddWaypoint(northBranchID, 1.00, 0.66);
	rmRiverSetBankNoiseParams(northBranchID, 0.06, 3, 1.5, 12.0, 0.667, 2.0);
	rmRiverBuild(northBranchID);

	int southBranchID = rmRiverCreate(-1, waterType, 2, 4, branchWidth, riverBankWidth);
	rmRiverAddWaypoint(southBranchID, 0.58, 0.52);
	rmRiverAddWaypoint(southBranchID, 0.68, 0.50);
	rmRiverAddWaypoint(southBranchID, rmRandFloat(0.75, 0.79), rmRandFloat(0.43, 0.47));
	rmRiverAddWaypoint(southBranchID, rmRandFloat(0.84, 0.88), rmRandFloat(0.37, 0.41));
	rmRiverAddWaypoint(southBranchID, 1.00, 0.34);
	rmRiverSetBankNoiseParams(southBranchID, 0.06, 3, 1.5, 12.0, 0.667, 2.0);
	rmRiverBuild(southBranchID);
}

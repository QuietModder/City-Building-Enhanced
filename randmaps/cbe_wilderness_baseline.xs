// CBE Wilderness Baseline
// Stable baseline with Biome Theme + Region Flavor selection.

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

//File in charge doing the biome theme and region flavor selection (Does not generate the map, just sets the theme and flavor for the map generation)
include "cbeThemeModel.xs";

// File in charge of placing the feature groupings on the map (Does not generate the map, just places the groupings)
include "cbeFeatureGroupings.xs";

void main(void)
{
	rmSetStatusText("", 0.01);

	int TeamNum = cNumberTeams;
	int PlayerNum = cNumberNonGaiaPlayers;
	int numPlayer = cNumberPlayers;

	// ================================================================
	// Minor Civ Setup
	// ================================================================

	rmSetSubCiv(0, "SPCCityState", true);
	rmSetSubCiv(1, "SPCArtilleryDistrict", true);
	rmSetSubCiv(2, "SPCMarketDistrict", true);
	rmSetSubCiv(3, "SPCReligiousDistrict", true);
	rmSetSubCiv(4, "SPCMilitaryDistrict", true);

	// ================================================================
	// Theme Model
	// ================================================================

	int cbeBiomeTheme = cbeChooseBiomeTheme();
	int cbeRegionFlavor = cbeChooseRegionFlavor(cbeBiomeTheme);
	string cbeBiomeName = cbeGetBiomeName(cbeBiomeTheme);
	string cbeRegionName = cbeGetRegionName(cbeRegionFlavor);

	// ================================================================
	// Land Feature Flags
	// ================================================================

	// Always-on features.
	int cbeHasTradeRoute = 1;

	// Weighted features.
	int cbeHasRiver = 0;
	int cbeHasCliffs = 0;
	int cbeHasMountains = 0;
	int cbeHasCaves = 0;
	int cbeHasCoast = 0;
	int cbeHasDenseWilds = 0;
	int cbeHasAncientRuins = 0;

	cbeHasRiver = cbeRollFeatureEnabled(cbeFeatureWeightRiver(cbeBiomeTheme));
	cbeHasCliffs = cbeRollFeatureEnabled(cbeFeatureWeightCliffs(cbeBiomeTheme));
	cbeHasMountains = cbeRollFeatureEnabled(cbeFeatureWeightMountains(cbeBiomeTheme));
	cbeHasCaves = cbeRollFeatureEnabled(cbeFeatureWeightCaves(cbeBiomeTheme));
	cbeHasCoast = cbeRollFeatureEnabled(cbeFeatureWeightCoast(cbeBiomeTheme));
	cbeHasDenseWilds = cbeRollFeatureEnabled(cbeFeatureWeightDenseWilds(cbeBiomeTheme));
	cbeHasAncientRuins = cbeRollFeatureEnabled(cbeFeatureWeightRuins(cbeBiomeTheme));

	// ================================================================
	// Feature Relationships
	// ================================================================

	int cbeRouteRiverRelationship = cbeRollRouteRiverRelationship(cbeHasTradeRoute, cbeHasRiver);
	int cbeRouteMesaRelationship = cbeRollRouteMesaRelationship(cbeHasTradeRoute, cbeHasCliffs, cbeHasMountains);
	int cbeRouteDenseWildsRelationship = cbeRollRouteDenseWildsRelationship(cbeHasTradeRoute, cbeHasDenseWilds);

	rmEchoInfo("CBE Feature TradeRoute = "+cbeHasTradeRoute);
	rmEchoInfo("CBE Feature River = "+cbeHasRiver);
	rmEchoInfo("CBE Feature Cliffs = "+cbeHasCliffs);
	rmEchoInfo("CBE Feature Mountains = "+cbeHasMountains);
	rmEchoInfo("CBE Feature Caves = "+cbeHasCaves);
	rmEchoInfo("CBE Feature Coast = "+cbeHasCoast);
	rmEchoInfo("CBE Feature DenseWilds = "+cbeHasDenseWilds);
	rmEchoInfo("CBE Feature AncientRuins = "+cbeHasAncientRuins);
	rmEchoInfo("CBE Route/River Relationship = "+cbeRouteRiverRelationship);
	rmEchoInfo("CBE Route/Mesa Relationship = "+cbeRouteMesaRelationship);
	rmEchoInfo("CBE Route/DenseWilds Relationship = "+cbeRouteDenseWildsRelationship);

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
	float cbeMapScale = 6.0;
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
	rmSetMapType("euroTradeRouteCapture");
	rmSetLightingSet("Carolina_Skirmish");

	chooseMercs();

	string cbeDebugThemeMessage = "CBE Wilderness: "+cbeBiomeName+" biome ("+cbeRegionName+" region)";
	string cbeDebugFeaturesAMessage = "Features (1=yes): trade route "+cbeHasTradeRoute+", river "+cbeHasRiver+", cliffs "+cbeHasCliffs+", mountains "+cbeHasMountains;
	string cbeDebugFeaturesBMessage = "Features (1=yes): caves "+cbeHasCaves+", coast "+cbeHasCoast+", dense wilds "+cbeHasDenseWilds+", ruins "+cbeHasAncientRuins;
	string cbeDebugRouteMessage = "Route logic: river "+cbeGetRouteRiverRelationshipName(cbeRouteRiverRelationship)+", mesa "+cbeGetRouteMesaRelationshipName(cbeRouteMesaRelationship)+", wilds "+cbeGetRouteDenseWildsRelationshipName(cbeRouteDenseWildsRelationship);

	rmCreateTrigger("cbeMapDecisionSummary");
	rmSwitchToTrigger(rmTriggerID("cbeMapDecisionSummary"));
	rmSetTriggerPriority(4);
	rmSetTriggerActive(true);
	rmSetTriggerRunImmediately(true);
	rmSetTriggerLoop(false);
	rmAddTriggerCondition("Timer");
	rmSetTriggerConditionParamInt("Param1", 2, false);
	rmAddTriggerEffect("Send Chat As String");
	rmSetTriggerEffectParamInt("PlayerID", 0, false);
	rmSetTriggerEffectParam("Message", cbeDebugThemeMessage, false);
	rmAddTriggerEffect("Send Chat As String");
	rmSetTriggerEffectParamInt("PlayerID", 0, false);
	rmSetTriggerEffectParam("Message", cbeDebugFeaturesAMessage, false);
	rmAddTriggerEffect("Send Chat As String");
	rmSetTriggerEffectParamInt("PlayerID", 0, false);
	rmSetTriggerEffectParam("Message", cbeDebugFeaturesBMessage, false);
	rmAddTriggerEffect("Send Chat As String");
	rmSetTriggerEffectParamInt("PlayerID", 0, false);
	rmSetTriggerEffectParam("Message", cbeDebugRouteMessage, false);

	// ================================================================
	// Classes
	// ================================================================

	int classPlayer = rmDefineClass("player");
	int classStartingResource = rmDefineClass("startingResource");
	int classForest = rmDefineClass("Forest");
	int classSocket = rmDefineClass("socketClass");
	int classCityState = rmDefineClass("cityState");
	rmDefineClass("starting settlement");
	rmDefineClass("startingUnit");

	// ================================================================
	// Constraints
	// ================================================================

	int avoidStartingResources = rmCreateClassDistanceConstraint("avoid starting resources", classStartingResource, 8.0);
	int avoidStartingResourcesShort = rmCreateClassDistanceConstraint("avoid starting resources short", classStartingResource, 4.0);
	int avoidImpassableLandShort = rmCreateTerrainDistanceConstraint("avoid impassable land short", "Land", false, 4.0);
	int avoidForestShort = rmCreateClassDistanceConstraint("avoid forest short", classForest, 8.0);
	int avoidCityState = rmCreateClassDistanceConstraint("avoid city state", classCityState, 36.0);
	int avoidCityStateShort = rmCreateClassDistanceConstraint("avoid city state short", classCityState, 18.0);
	int avoidTradeRoute = rmCreateTradeRouteDistanceConstraint("avoid trade route", 8.0);
	int avoidTradeRouteSocket = rmCreateTypeDistanceConstraint("avoid trade route socket", "sockettraderoute", 10.0);

	rmSetStatusText("", 0.20);

	// ================================================================
	// Trade Routes
	// ================================================================

	/*
	int cbeTradeRouteID = rmCreateTradeRoute();
	int cbeSocketID = rmCreateObjectDef("cbe trade route sockets");
	rmAddObjectDefItem(cbeSocketID, "SocketTradeRoute", 1, 0.0);
	rmSetObjectDefAllowOverlap(cbeSocketID, true);
	rmAddObjectDefToClass(cbeSocketID, classSocket);
	rmSetObjectDefMinDistance(cbeSocketID, 2.0);
	rmSetObjectDefMaxDistance(cbeSocketID, 8.0);
	rmSetObjectDefTradeRouteID(cbeSocketID, cbeTradeRouteID);

	int cbeTradeRouteHorizontal = 1;
	int cbeTradeRouteDiagonalUp = 2;
	int cbeTradeRouteDiagonalDown = 3;
	int cbeTradeRouteVertical = 4;

	int cbeTradeRouteShape = rmRandInt(1, 4);
	float cbeRouteOffset = 0.38;
	if (cbeRouteRiverRelationship == cbeRouteRiverParallelOffset())
	{
		if (rmRandInt(1, 2) == 1)
			cbeTradeRouteShape = cbeTradeRouteHorizontal;
		else
			cbeTradeRouteShape = cbeTradeRouteVertical;
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaCutsPass())
	{
		cbeTradeRouteShape = rmRandInt(1, 4);
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaSkirts())
	{
		if (rmRandInt(1, 2) == 1)
			cbeTradeRouteShape = cbeTradeRouteDiagonalUp;
		else
			cbeTradeRouteShape = cbeTradeRouteDiagonalDown;
	}

	rmEchoInfo("CBE Trade Route Shape = "+cbeTradeRouteShape);

	if (cbeRouteMesaRelationship == cbeRouteMesaCutsPass())
	{
		if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.30, 0.47, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.70, 0.53, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, 0.50);
		}
		else if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.34, 0.36, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.66, 0.64, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
		}
		else if (cbeTradeRouteShape == cbeTradeRouteDiagonalDown)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.34, 0.64, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.66, 0.36, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.05);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.47, 0.30, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.53, 0.70, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.95);
		}
	}
	else if (cbeRouteRiverRelationship == cbeRouteRiverParallelOffset())
	{
		cbeRouteOffset = 0.38;
		if (rmRandInt(1, 2) == 1)
			cbeRouteOffset = 0.62;

		if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, cbeRouteOffset);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, cbeRouteOffset, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, cbeRouteOffset, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, cbeRouteOffset);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, cbeRouteOffset, 0.05);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, cbeRouteOffset, 0.35, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, cbeRouteOffset, 0.65, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, cbeRouteOffset, 0.95);
		}
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaSkirts())
	{
		if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.30, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.70, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.70, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.30, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
		}
	}
	else if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, 0.50);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.48, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.52, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, 0.50);
	}
	else if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.38, 0.38, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.62, 0.62, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
	}
	else if (cbeTradeRouteShape == cbeTradeRouteDiagonalDown)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.38, 0.62, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.62, 0.38, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
	}
	else
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.05);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.48, 0.35, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.52, 0.65, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.95);
	}

	bool cbeTradeRoutePlaced = rmBuildTradeRoute(cbeTradeRouteID, "dirt_trail");
	if (cbeTradeRoutePlaced == false)
		rmEchoError("CBE failed to place trade route");

	vector cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.18);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.50);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.82);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	*/

	// ================================================================
	// City-State Landmarks
	// ================================================================

	/*
	int cbeCityStateArea = rmCreateArea("cbe city-state clearing");
	rmSetAreaLocation(cbeCityStateArea, 0.50, 0.50);
	rmSetAreaSize(cbeCityStateArea, rmAreaTilesToFraction(18000), rmAreaTilesToFraction(22000));
	rmSetAreaCoherence(cbeCityStateArea, 0.75);
	rmSetAreaSmoothDistance(cbeCityStateArea, 6);
	rmAddAreaToClass(cbeCityStateArea, classCityState);
	rmSetAreaWarnFailure(cbeCityStateArea, false);
	rmBuildArea(cbeCityStateArea);

	string cbeCityStateGroupingName1 = "cbe_city_state_outpost_01";
	string cbeCityStateGroupingName2 = "cbe_city_state_outpost_02";
	string cbeCityStateGroupingName3 = "cbe_city_state_outpost_03";
	string cbeCityStateGroupingName4 = "cbe_city_state_outpost_04";

	int cbeCityStateID1 = rmCreateGrouping("cbe city-state 1", cbeCityStateGroupingName1);
	int cbeCityStateID2 = rmCreateGrouping("cbe city-state 2", cbeCityStateGroupingName2);
	int cbeCityStateID3 = rmCreateGrouping("cbe city-state 3", cbeCityStateGroupingName3);
	int cbeCityStateID4 = rmCreateGrouping("cbe city-state 4", cbeCityStateGroupingName4);

	rmSetGroupingMinDistance(cbeCityStateID1, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateID1, 0.0);
	rmAddGroupingToClass(cbeCityStateID1, classCityState);
	rmSetGroupingMinDistance(cbeCityStateID2, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateID2, 0.0);
	rmAddGroupingToClass(cbeCityStateID2, classCityState);
	rmSetGroupingMinDistance(cbeCityStateID3, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateID3, 0.0);
	rmAddGroupingToClass(cbeCityStateID3, classCityState);
	rmSetGroupingMinDistance(cbeCityStateID4, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateID4, 0.0);
	rmAddGroupingToClass(cbeCityStateID4, classCityState);

	int cbeCityStateInstanceID1 = rmPlaceGroupingInstanceAtLoc(cbeCityStateID1, 0.68, 0.50, 0);
	int cbeCityStateInstanceID2 = rmPlaceGroupingInstanceAtLoc(cbeCityStateID2, 0.50, 0.68, 0);
	int cbeCityStateInstanceID3 = rmPlaceGroupingInstanceAtLoc(cbeCityStateID3, 0.32, 0.50, 0);
	int cbeCityStateInstanceID4 = rmPlaceGroupingInstanceAtLoc(cbeCityStateID4, 0.50, 0.32, 0);

	int cbeCityStateFlag1 = rmGetGroupingInstanceUnitByType(cbeCityStateInstanceID1, "deSPCCapturableFlag");
	int cbeCityStateFlag2 = rmGetGroupingInstanceUnitByType(cbeCityStateInstanceID2, "deSPCCapturableFlag");
	int cbeCityStateFlag3 = rmGetGroupingInstanceUnitByType(cbeCityStateInstanceID3, "deSPCCapturableFlag");
	int cbeCityStateFlag4 = rmGetGroupingInstanceUnitByType(cbeCityStateInstanceID4, "deSPCCapturableFlag");

	rmEchoInfo("CBE City-State 1 = "+cbeCityStateGroupingName1+" instance "+cbeCityStateInstanceID1);
	rmEchoInfo("CBE City-State 2 = "+cbeCityStateGroupingName2+" instance "+cbeCityStateInstanceID2);
	rmEchoInfo("CBE City-State 3 = "+cbeCityStateGroupingName3+" instance "+cbeCityStateInstanceID3);
	rmEchoInfo("CBE City-State 4 = "+cbeCityStateGroupingName4+" instance "+cbeCityStateInstanceID4);

	cbeCreateFlagGroupingOwnership(1, cbeCityStateInstanceID1, cbeCityStateFlag1);
	cbeCreateFlagGroupingOwnership(2, cbeCityStateInstanceID2, cbeCityStateFlag2);
	cbeCreateFlagGroupingOwnership(3, cbeCityStateInstanceID3, cbeCityStateFlag3);
	cbeCreateFlagGroupingOwnership(4, cbeCityStateInstanceID4, cbeCityStateFlag4);
	*/

	// ================================================================
	// Noble Exiles Outpost
	// ================================================================

	/*
	int cbeNobleExilesOutpostID = rmCreateGrouping("cbe noble exiles outpost", "NobleExilesOutpost");
	rmSetGroupingMinDistance(cbeNobleExilesOutpostID, 0.0);
	rmSetGroupingMaxDistance(cbeNobleExilesOutpostID, 0.0);
	rmAddGroupingToClass(cbeNobleExilesOutpostID, classCityState);

	float cbeNobleExilesX = 0.50;
	float cbeNobleExilesZ = 0.50;

	rmPlaceGroupingAtLoc(cbeNobleExilesOutpostID, 0, cbeNobleExilesX, cbeNobleExilesZ);
	rmEchoInfo("CBE Noble Exiles Outpost placed");
	*/

	// ================================================================
	// Showcase Groupings
	// ================================================================

	/*
	int cbeShowcaseCossacks1 = rmCreateGrouping("cbe showcase cossacks 1", "hm04_cossacks_camp_01");
	int cbeShowcaseCossacks2 = rmCreateGrouping("cbe showcase cossacks 2", "hm04_cossacks_camp_02");
	int cbeShowcaseOutlaw1 = rmCreateGrouping("cbe showcase outlaw trade 1", "cbe_outlaw_trading_camp_01");
	int cbeShowcaseOutlaw2 = rmCreateGrouping("cbe showcase outlaw trade 2", "cbe_outlaw_trading_camp_02");
	int cbeShowcaseOutlaw3 = rmCreateGrouping("cbe showcase outlaw trade 3", "cbe_outlaw_trading_camp_03");
	int cbeShowcaseOutlaw4 = rmCreateGrouping("cbe showcase outlaw trade 4", "cbe_outlaw_trading_camp_04");
	int cbeShowcaseMerchant1 = rmCreateGrouping("cbe showcase merchant 1", "cbe_merchant_01");
	int cbeShowcaseMerchant2 = rmCreateGrouping("cbe showcase merchant 2", "cbe_merchant_02");
	int cbeShowcaseMerchant3 = rmCreateGrouping("cbe showcase merchant 3", "cbe_merchant_03");

	rmSetGroupingMinDistance(cbeShowcaseCossacks1, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseCossacks1, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseCossacks2, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseCossacks2, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseOutlaw1, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseOutlaw1, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseOutlaw2, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseOutlaw2, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseOutlaw3, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseOutlaw3, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseOutlaw4, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseOutlaw4, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseMerchant1, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseMerchant1, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseMerchant2, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseMerchant2, 0.0);
	rmSetGroupingMinDistance(cbeShowcaseMerchant3, 0.0);
	rmSetGroupingMaxDistance(cbeShowcaseMerchant3, 0.0);

	int cbeShowcaseCossacksInstance1 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseCossacks1, 0.26, 0.26, 0);
	int cbeShowcaseCossacksInstance2 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseCossacks2, 0.74, 0.74, 0);
	int cbeShowcaseOutlawInstance1 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseOutlaw1, 0.26, 0.74, 0);
	int cbeShowcaseOutlawInstance2 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseOutlaw2, 0.74, 0.26, 0);
	int cbeShowcaseOutlawInstance3 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseOutlaw3, 0.34, 0.66, 0);
	int cbeShowcaseOutlawInstance4 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseOutlaw4, 0.66, 0.34, 0);
	int cbeShowcaseMerchantInstance1 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseMerchant1, 0.86, 0.86, 0);
	int cbeShowcaseMerchantInstance2 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseMerchant2, 0.86, 0.14, 0);
	int cbeShowcaseMerchantInstance3 = rmPlaceGroupingInstanceAtLoc(cbeShowcaseMerchant3, 0.14, 0.86, 0);

	int cbeShowcaseCossacksFlag1 = rmGetGroupingInstanceUnitByType(cbeShowcaseCossacksInstance1, "deSPCCapturableFlagCossack");
	int cbeShowcaseCossacksFlag2 = rmGetGroupingInstanceUnitByType(cbeShowcaseCossacksInstance2, "deSPCCapturableFlagCossack");
	int cbeShowcaseOutlawFlag1 = rmGetGroupingInstanceUnitByType(cbeShowcaseOutlawInstance1, "deSPCCapturableFlag");
	int cbeShowcaseOutlawFlag2 = rmGetGroupingInstanceUnitByType(cbeShowcaseOutlawInstance2, "deSPCCapturableFlag");
	int cbeShowcaseOutlawFlag3 = rmGetGroupingInstanceUnitByType(cbeShowcaseOutlawInstance3, "deSPCCapturableFlag");
	int cbeShowcaseOutlawFlag4 = rmGetGroupingInstanceUnitByType(cbeShowcaseOutlawInstance4, "deSPCCapturableFlag");
	int cbeShowcaseMerchantFlag1 = rmGetGroupingInstanceUnitByType(cbeShowcaseMerchantInstance1, "deSPCCapturableFlag");
	int cbeShowcaseMerchantFlag2 = rmGetGroupingInstanceUnitByType(cbeShowcaseMerchantInstance2, "deSPCCapturableFlag");
	int cbeShowcaseMerchantFlag3 = rmGetGroupingInstanceUnitByType(cbeShowcaseMerchantInstance3, "deSPCCapturableFlag");

	cbeCreateFlagGroupingOwnership(101, cbeShowcaseCossacksInstance1, cbeShowcaseCossacksFlag1);
	cbeCreateFlagGroupingOwnership(102, cbeShowcaseCossacksInstance2, cbeShowcaseCossacksFlag2);
	cbeCreateFlagGroupingOwnership(111, cbeShowcaseOutlawInstance1, cbeShowcaseOutlawFlag1);
	cbeCreateFlagGroupingOwnership(112, cbeShowcaseOutlawInstance2, cbeShowcaseOutlawFlag2);
	cbeCreateFlagGroupingOwnership(113, cbeShowcaseOutlawInstance3, cbeShowcaseOutlawFlag3);
	cbeCreateFlagGroupingOwnership(114, cbeShowcaseOutlawInstance4, cbeShowcaseOutlawFlag4);
	cbeCreateFlagGroupingOwnership(121, cbeShowcaseMerchantInstance1, cbeShowcaseMerchantFlag1);
	cbeCreateFlagGroupingOwnership(122, cbeShowcaseMerchantInstance2, cbeShowcaseMerchantFlag2);
	cbeCreateFlagGroupingOwnership(123, cbeShowcaseMerchantInstance3, cbeShowcaseMerchantFlag3);

	rmEchoInfo("CBE showcase groupings placed");
	*/
	// ================================================================
	// Feature Groupings
	// ================================================================

	// cbePlaceFeatureGroupings();


	// ================================================================
	// Player Placement
	// ================================================================

	int teamID = 0;
	float cbePlayerRingInner = 0.45;
	float cbePlayerRingOuter = 0.45;
	float cbeTeamSpacing = 0.20;
	if (PlayerNum <= 2)
	{
		cbePlayerRingInner = 0.46;
		cbePlayerRingOuter = 0.46;
		cbeTeamSpacing = 0.15;
	}
	if (TeamNum == 2)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		if (PlayerNum <= 2)
			rmSetPlacementSection(0.12, 0.14);
		else
			rmSetPlacementSection(0.10, 0.16);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		if (PlayerNum <= 2)
			rmSetPlacementSection(0.62, 0.64);
		else
			rmSetPlacementSection(0.60, 0.66);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else if (TeamNum == 3)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		rmSetPlacementSection(0.08, 0.16);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		rmSetPlacementSection(0.41, 0.49);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(2);
		rmSetPlacementSection(0.74, 0.82);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else if (TeamNum == 4)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		rmSetPlacementSection(0.975, 0.025);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		rmSetPlacementSection(0.225, 0.275);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(2);
		rmSetPlacementSection(0.475, 0.525);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(3);
		rmSetPlacementSection(0.725, 0.775);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		if (TeamNum > 2)
		{
			float cbeTeamArc = 0.35 / TeamNum;
			for (teamID = 0; < TeamNum)
			{
				float cbeTeamCenter = 0.05 + (teamID * (1.0 / TeamNum));
				float cbeTeamStart = cbeTeamCenter - (cbeTeamArc * 0.50);
				float cbeTeamEnd = cbeTeamCenter + (cbeTeamArc * 0.50);
				if (cbeTeamStart < 0.0)
					cbeTeamStart = cbeTeamStart + 1.0;
				if (cbeTeamEnd > 1.0)
					cbeTeamEnd = cbeTeamEnd - 1.0;

				rmSetPlacementTeam(teamID);
				rmSetPlacementSection(cbeTeamStart, cbeTeamEnd);
				rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
			}
		}
		else
		{
			rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
		}
	}

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
	rmAddObjectDefConstraint(startingUnitsID, avoidCityStateShort);

	// Starting resources.
	int playerMineID = rmCreateObjectDef("player mine");
	rmAddObjectDefItem(playerMineID, "mine", 1, 0.0);
	rmSetObjectDefMinDistance(playerMineID, 12.0);
	rmSetObjectDefMaxDistance(playerMineID, 14.0);
	rmAddObjectDefToClass(playerMineID, classStartingResource);
	rmAddObjectDefConstraint(playerMineID, avoidStartingResourcesShort);
	rmAddObjectDefConstraint(playerMineID, avoidImpassableLandShort);
	rmAddObjectDefConstraint(playerMineID, avoidCityState);
	rmAddObjectDefConstraint(playerMineID, avoidTradeRoute);
	rmAddObjectDefConstraint(playerMineID, avoidTradeRouteSocket);

	int playerHerdID = rmCreateObjectDef("starting herd");
	rmAddObjectDefItem(playerHerdID, "deer", 8, 3.0);
	rmSetObjectDefMinDistance(playerHerdID, 12.0);
	rmSetObjectDefMaxDistance(playerHerdID, 12.0);
	rmSetObjectDefCreateHerd(playerHerdID, true);
	rmAddObjectDefToClass(playerHerdID, classStartingResource);
	rmAddObjectDefConstraint(playerHerdID, avoidStartingResourcesShort);
	rmAddObjectDefConstraint(playerHerdID, avoidImpassableLandShort);
	rmAddObjectDefConstraint(playerHerdID, avoidCityState);
	rmAddObjectDefConstraint(playerHerdID, avoidTradeRoute);
	rmAddObjectDefConstraint(playerHerdID, avoidTradeRouteSocket);

	int playerTreeID = rmCreateObjectDef("player trees");
	rmAddObjectDefItem(playerTreeID, "TreeCarolinaGrass", 6, 5.0);
	rmSetObjectDefMinDistance(playerTreeID, 16.0);
	rmSetObjectDefMaxDistance(playerTreeID, 20.0);
	rmAddObjectDefToClass(playerTreeID, classStartingResource);
	rmAddObjectDefToClass(playerTreeID, classForest);
	rmAddObjectDefConstraint(playerTreeID, avoidForestShort);
	rmAddObjectDefConstraint(playerTreeID, avoidStartingResources);
	rmAddObjectDefConstraint(playerTreeID, avoidImpassableLandShort);
	rmAddObjectDefConstraint(playerTreeID, avoidCityState);
	rmAddObjectDefConstraint(playerTreeID, avoidTradeRoute);
	rmAddObjectDefConstraint(playerTreeID, avoidTradeRouteSocket);

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

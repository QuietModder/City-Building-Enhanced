// CBE Wilderness Baseline
// Stable baseline with Biome Theme + Region Flavor selection.

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

// CBE Extensions
include "extensions/cbeMapValueSetter.xs";
include "extensions/cbeMapSizeSetter.xs";
include "extensions/cbeMapMessages.xs";
include "extensions/cbeTradeRoutes.xs";
include "extensions/cbeFeatureGroupings.xs";

void main(void)
{
	rmSetStatusText("", 0.01);

	int TeamNum = cNumberTeams;
	int PlayerNum = cNumberNonGaiaPlayers;
	int numPlayer = cNumberPlayers;

	// ================================================================
	// Theme Model
	// ================================================================

	int cbeBiomeTheme = cbeChooseBiomeTheme();
	int cbeRegionFlavor = cbeChooseRegionFlavor(cbeBiomeTheme);

	// ================================================================
	// Geography Model
	// ================================================================

	int cbeGeographyLandform = cbeChooseGeographyLandform(cbeBiomeTheme, cbeRegionFlavor);
	int cbeGeographyModifier = cbeChooseGeographyModifier(cbeGeographyLandform, cbeBiomeTheme, cbeRegionFlavor);

	// ================================================================
	// Land Feature Flags
	// ================================================================

	int cbeHasTradeRoute = 0;
	int cbeHasRiver = cbeRollFeatureEnabled(cbeFeatureWeightRiver(cbeBiomeTheme, cbeGeographyLandform, cbeGeographyModifier));
	int cbeHasCliffs = cbeRollFeatureEnabled(cbeFeatureWeightCliffs(cbeBiomeTheme, cbeGeographyLandform, cbeGeographyModifier));
	int cbeHasMountains = cbeRollFeatureEnabled(cbeFeatureWeightMountains(cbeBiomeTheme, cbeGeographyLandform, cbeGeographyModifier));
	int cbeHasCaves = cbeRollFeatureEnabled(cbeFeatureWeightCaves(cbeBiomeTheme));
	int cbeHasCoast = cbeRollFeatureEnabled(cbeFeatureWeightCoast(cbeBiomeTheme, cbeGeographyLandform, cbeGeographyModifier));
	int cbeHasDenseWilds = cbeRollFeatureEnabled(cbeFeatureWeightDenseWilds(cbeBiomeTheme));
	int cbeHasAncientRuins = cbeRollFeatureEnabled(cbeFeatureWeightRuins(cbeBiomeTheme));

	if (cbeGeographyRequiresRiver(cbeGeographyLandform, cbeGeographyModifier) == 1)
		cbeHasRiver = 1;
	if (cbeGeographyRequiresCoast(cbeGeographyLandform, cbeGeographyModifier) == 1)
		cbeHasCoast = 1;
	if (cbeGeographyRequiresCliffs(cbeGeographyLandform, cbeGeographyModifier) == 1)
		cbeHasCliffs = 1;
	if (cbeGeographyRequiresMountains(cbeGeographyLandform, cbeGeographyModifier) == 1)
		cbeHasMountains = 1;

	// ================================================================
	// Map Feature Flags
	// ================================================================

	int cbeHasCityStates = cbeRollCityStates(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);
	int cbeHasDistricts = cbeRollDistricts(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);
	int cbeHasFeatureVillages = cbeRollFeatureVillages(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);
	int cbeHasOutlawCamps = cbeRollOutlawCamps(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);
	int cbeHasMerchantOutposts = cbeRollMerchantOutposts(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);
	int cbeRogueArmyPreset = cbeChooseRogueArmyPreset(cbeBiomeTheme, cbeRegionFlavor, cbeGeographyLandform, cbeGeographyModifier);

	cbeSetupFeatureGroupingSubCivs(cbeHasCityStates, cbeHasDistricts);

	// ================================================================
	// Map Setup
	// ================================================================

	int playerTiles = cbeGetPlayerTiles(PlayerNum);
	float cbeMapScale = cbeGetMapScale();
	playerTiles = playerTiles * cbeMapScale;

	int size = 2.0 * sqrt(PlayerNum * playerTiles);
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

	cbeShowMapSummaryMessage(
		cbeBiomeTheme, cbeRegionFlavor,
		cbeGeographyLandform, cbeGeographyModifier,
		cbeHasTradeRoute, cbeHasRiver, cbeHasCliffs, cbeHasMountains,
		cbeHasCaves, cbeHasCoast, cbeHasDenseWilds, cbeHasAncientRuins
	);

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
	// Trade Routes
	// ================================================================

	if (cbeHasTradeRoute == 1)
	{
		cbePlaceTradeRoute(0, 0, classSocket);
	}

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
	}

	rmSetStatusText("", 1.00);
}


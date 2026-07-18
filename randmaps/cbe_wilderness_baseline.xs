// CBE Wilderness Baseline
// Stable baseline with Biome Theme + Region Flavor selection.

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

// CBE Extensions
include "extensions/cbeMapValueSetter.xs";
include "extensions/cbeMapSizeSetter.xs";
include "extensions/cbeMapMessages.xs";
include "extensions/cbeWorldSetter.xs";
include "extensions/cbePlayerPlacement.xs";
include "extensions/cbeStartingUnits.xs";

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

	// ================================================================
	// Map Size
	// ================================================================

	int playerTiles = cbeGetPlayerTiles(PlayerNum);
	float cbeMapScale = cbeGetMapScale();
	playerTiles = playerTiles * cbeMapScale;

	int size = 2.0 * sqrt(PlayerNum * playerTiles);
	rmSetMapSize(size, size);

	// ================================================================
	// Base World Setup
	// ================================================================

	cbeSetBaseWorld(
		cbeBiomeTheme, cbeRegionFlavor,
		cbeGeographyLandform, cbeGeographyModifier,
		cbeHasCoast, cbeHasTradeRoute
	);

	// ================================================================
	// Global Systems
	// ================================================================

	// Vanilla helper that selects the map's random mercenary pool.
	chooseMercs();

	// ================================================================
	// Map Summary Message
	// ================================================================

	cbeShowMapSummaryMessage(
		cbeBiomeTheme, cbeRegionFlavor,
		cbeGeographyLandform, cbeGeographyModifier,
		cbeHasTradeRoute, cbeHasRiver, cbeHasCliffs, cbeHasMountains,
		cbeHasCaves, cbeHasCoast, cbeHasDenseWilds, cbeHasAncientRuins
	);

	rmSetStatusText("", 0.20);

	// ================================================================
	// Player Starts
	// ================================================================

	cbePlacePlayers(TeamNum, PlayerNum);
	cbeCreatePlayerAreas(numPlayer);
	cbePlaceStartingUnits(numPlayer);

	rmSetStatusText("", 1.00);
}


// CBE Wilderness Baseline
// Stable baseline with Biome Theme + Region Flavor selection.

// ================================================================
// Global Map Values
// ================================================================

int cbeGeneratedBiomeTheme = 1;
int cbeGeneratedRegionFlavor = 1;

int cbeGeneratedGeographyLandform = 1;
int cbeGeneratedGeographyModifier = 0;

int cbeGeneratedBaseTerrainRoll = 0;
int cbeGeneratedTerrainMixRoll = 0;
int cbeGeneratedPrimaryMapTypeRoll = 0;
int cbeGeneratedSecondaryMapTypeRoll = 0;
int cbeGeneratedSeaTypeRoll = 0;
int cbeGeneratedLightingSetRoll = 0;

int cbeGeneratedHasTradeRoute = 0;
int cbeGeneratedHasRiver = 0;
int cbeGeneratedHasCliffs = 0;
int cbeGeneratedHasMountains = 0;
int cbeGeneratedHasCaves = 0;
int cbeGeneratedHasCoast = 0;
int cbeGeneratedHasDenseWilds = 0;
int cbeGeneratedHasAncientRuins = 0;

int cbeGeneratedHasCityStates = 0;
int cbeGeneratedHasDistricts = 0;
int cbeGeneratedHasFeatureVillages = 0;
int cbeGeneratedHasOutlawCamps = 0;
int cbeGeneratedHasMerchantOutposts = 0;
int cbeGeneratedRogueArmyPreset = 0;

int cbeGeneratedPlayerTiles = 0;
float cbeGeneratedMapScale = 1.0;
int cbeGeneratedMapSize = 0;

int cbeDebugForceDelta = 1;

include "mercenaries.xs";
include "ypAsianInclude.xs";
include "ypKOTHInclude.xs";

// Value Setter Extensions (Does nothing except roll values to dictate map generation)
include "extensions/cbeMapValueSetter.xs"; // Sets values for map generation features and geography

// CBE Map Generation
include "extensions/cbeMapSizeSetter.xs";	// Map Size
include "extensions/cbeMapMessages.xs";		// Displays map generation summary messages
include "extensions/cbePlayerPlacement.xs"; // Player Placement
include "extensions/cbeStartingUnits.xs";	// Starting Units
include "extensions/cbeWorldSetter.xs";		// Implements Terrain, Lighting, and Water
include "extensions/geographyBuilders/cbeDeltaBuilder.xs";

// ================================================================

void main(void)
{
	rmSetStatusText("", 0.01);

	int TeamNum = cNumberTeams;
	int PlayerNum = cNumberNonGaiaPlayers;
	int numPlayer = cNumberPlayers;

	// ================================================================
	// Theme Model
	// ================================================================

	cbeGeneratedBiomeTheme = cbeChooseBiomeTheme();
	cbeGeneratedRegionFlavor = cbeChooseRegionFlavor(cbeGeneratedBiomeTheme);

	// ================================================================
	// Geography Model
	// ================================================================

	cbeGeneratedGeographyLandform = cbeChooseGeographyLandform(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor);
	cbeGeneratedGeographyModifier = cbeChooseGeographyModifier(cbeGeneratedGeographyLandform, cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor);
	if (cbeDebugForceDelta == 1)
	{
		cbeGeneratedBiomeTheme = cbeBiomeWetlandIsland();
		cbeGeneratedRegionFlavor = cbeRegionSouthAmerica();
		cbeGeneratedGeographyLandform = cbeGeoDelta();
		cbeGeneratedGeographyModifier = cbeGeoModMarshLowlands();
	}

	// ================================================================
	// Land Feature Flags
	// ================================================================

	cbeGeneratedHasTradeRoute = 0;
	cbeGeneratedHasRiver = cbeRollFeatureEnabled(cbeFeatureWeightRiver(cbeGeneratedBiomeTheme, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier));
	cbeGeneratedHasCliffs = cbeRollFeatureEnabled(cbeFeatureWeightCliffs(cbeGeneratedBiomeTheme, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier));
	cbeGeneratedHasMountains = cbeRollFeatureEnabled(cbeFeatureWeightMountains(cbeGeneratedBiomeTheme, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier));
	cbeGeneratedHasCaves = cbeRollFeatureEnabled(cbeFeatureWeightCaves(cbeGeneratedBiomeTheme));
	cbeGeneratedHasCoast = cbeRollFeatureEnabled(cbeFeatureWeightCoast(cbeGeneratedBiomeTheme, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier));
	cbeGeneratedHasDenseWilds = cbeRollFeatureEnabled(cbeFeatureWeightDenseWilds(cbeGeneratedBiomeTheme));
	cbeGeneratedHasAncientRuins = cbeRollFeatureEnabled(cbeFeatureWeightRuins(cbeGeneratedBiomeTheme));

	if (cbeGeographyRequiresRiver(cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier) == 1)
		cbeGeneratedHasRiver = 1;
	if (cbeGeographyRequiresCoast(cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier) == 1)
		cbeGeneratedHasCoast = 1;
	if (cbeGeographyRequiresCliffs(cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier) == 1)
		cbeGeneratedHasCliffs = 1;
	if (cbeGeographyRequiresMountains(cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier) == 1)
		cbeGeneratedHasMountains = 1;

	// ================================================================
	// Map Feature Flags
	// ================================================================

	cbeGeneratedHasCityStates = cbeRollCityStates(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);
	cbeGeneratedHasDistricts = cbeRollDistricts(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);
	cbeGeneratedHasFeatureVillages = cbeRollFeatureVillages(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);
	cbeGeneratedHasOutlawCamps = cbeRollOutlawCamps(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);
	cbeGeneratedHasMerchantOutposts = cbeRollMerchantOutposts(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);
	cbeGeneratedRogueArmyPreset = cbeChooseRogueArmyPreset(cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor, cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier);

	// ================================================================
	// Map Size
	// ================================================================

	cbeGeneratedPlayerTiles = cbeGetPlayerTiles(PlayerNum);
	cbeGeneratedMapScale = cbeGetMapScale();
	cbeGeneratedPlayerTiles = cbeGeneratedPlayerTiles * cbeGeneratedMapScale;

	cbeGeneratedMapSize = 2.0 * sqrt(PlayerNum * cbeGeneratedPlayerTiles);
	rmSetMapSize(cbeGeneratedMapSize, cbeGeneratedMapSize);

	// ================================================================
	// Base World Setup
	// ================================================================

	cbeGeneratedBaseTerrainRoll = rmRandInt(1, 10000);
	cbeGeneratedTerrainMixRoll = rmRandInt(1, 10000);
	cbeGeneratedPrimaryMapTypeRoll = rmRandInt(1, 10000);
	cbeGeneratedSecondaryMapTypeRoll = rmRandInt(1, 10000);
	cbeGeneratedSeaTypeRoll = rmRandInt(1, 10000);
	cbeGeneratedLightingSetRoll = rmRandInt(1, 10000);

	cbeSetBaseWorld(
		cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor,
		cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier,
		cbeGeneratedHasCoast, cbeGeneratedHasTradeRoute,
		cbeGeneratedBaseTerrainRoll, cbeGeneratedTerrainMixRoll,
		cbeGeneratedPrimaryMapTypeRoll, cbeGeneratedSecondaryMapTypeRoll,
		cbeGeneratedSeaTypeRoll, cbeGeneratedLightingSetRoll
	);

	if (cbeGeneratedGeographyLandform == cbeGeoDelta())
		cbeBuildDelta(
			cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor,
			PlayerNum, cbeGeneratedSeaTypeRoll
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
		cbeGeneratedBiomeTheme, cbeGeneratedRegionFlavor,
		cbeGeneratedGeographyLandform, cbeGeneratedGeographyModifier,
		cbeGeneratedHasTradeRoute, cbeGeneratedHasRiver, cbeGeneratedHasCliffs, cbeGeneratedHasMountains,
		cbeGeneratedHasCaves, cbeGeneratedHasCoast, cbeGeneratedHasDenseWilds, cbeGeneratedHasAncientRuins
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

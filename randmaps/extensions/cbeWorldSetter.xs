// CBE World Setter

include "extensions/worldResources/cbeWorldResourceRolls.xs";
include "extensions/worldResources/cbeTerrainMixes.xs";
include "extensions/worldResources/cbeGroundTextures.xs";
include "extensions/worldResources/cbeMapTypes.xs";
include "extensions/worldResources/cbeLightingSets.xs";
include "extensions/worldResources/cbeWaterTypes.xs";
include "extensions/worldResources/cbeFeatureTerrainResources.xs";

// ================================================================
// Sea Level
// ================================================================
float cbeGetBaseSeaLevel(int biomeTheme = 1, int geographyLandform = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0.0);
	if (geographyLandform == cbeGeoRiverBasin())
		return(3.0);
	if (geographyLandform == cbeGeoDelta())
		return(2.0);
	if (geographyLandform == cbeGeoHarbor() || geographyLandform == cbeGeoPeninsula() || geographyLandform == cbeGeoIslandCoast())
		return(2.0);
	if (geographyLandform == cbeGeoFjord())
		return(4.0);
	return(0.0);
}

// ================================================================
// World Setup
// ================================================================

void cbeSetBaseWorld(
	int biomeTheme = 1, int regionFlavor = 1,
	int geographyLandform = 1, int geographyModifier = 0,
	int hasCoast = 0, int hasTradeRoute = 0,
	int baseTerrainRoll = 0, int terrainMixRoll = 0,
	int primaryMapTypeRoll = 0, int secondaryMapTypeRoll = 0,
	int seaTypeRoll = 0, int lightingSetRoll = 0)
{
	float seaLevel = cbeGetBaseSeaLevel(biomeTheme, geographyLandform);
	int usesTerrainMix = cbeShouldSetBaseTerrainMix(biomeTheme);
	string terrainMix = "None";
	string baseTerrain = cbeGetBaseTerrain(biomeTheme, regionFlavor, baseTerrainRoll);
	float terrainInitHeight = cbeGetTerrainInitHeight(biomeTheme, geographyLandform);
	string primaryMapType = cbeGetPrimaryMapType(biomeTheme, regionFlavor, geographyLandform, primaryMapTypeRoll);
	string secondaryMapType = cbeGetSecondaryMapType(biomeTheme, secondaryMapTypeRoll);
	string coastMapType = "land";
	string seaType = "None";
	string lightingSet = cbeGetLightingSet(biomeTheme, regionFlavor, lightingSetRoll);

	if (usesTerrainMix == 1)
		terrainMix = cbeGetBaseTerrainMix(biomeTheme, regionFlavor, geographyLandform, terrainMixRoll);
	if (hasCoast == 1)
	{
		coastMapType = "water";
		seaType = cbeGetSeaType(biomeTheme, regionFlavor, geographyLandform, seaTypeRoll);
	}

	rmSetWorldCircleConstraint(false);
	rmSetSeaLevel(seaLevel);

	if (biomeTheme == cbeBiomeCave())
		rmSetMapElevationParameters(cElevTurbulence, 0.04, 2, 0.3, 4.0);
	else if (biomeTheme == cbeBiomeMountain() || geographyLandform == cbeGeoHighlandValley())
		rmSetMapElevationParameters(cElevTurbulence, 0.04, 3, 0.5, 8.0);
	else if (biomeTheme == cbeBiomeDesert() || geographyLandform == cbeGeoCanyonlands())
		rmSetMapElevationParameters(cElevTurbulence, 0.03, 3, 0.4, 6.0);
	else
		rmSetMapElevationParameters(cElevTurbulence, 0.02, 2, 0.4, 4.0);

	if (usesTerrainMix == 1)
		rmSetBaseTerrainMix(terrainMix);
	rmTerrainInitialize(baseTerrain, terrainInitHeight);
	rmSetMapType(primaryMapType);
	rmSetMapType(secondaryMapType);

	if (hasCoast == 1)
	{
		rmSetSeaType(seaType);
		rmSetMapType(coastMapType);
	}
	else
		rmSetMapType(coastMapType);

	if (hasTradeRoute == 1)
		rmSetMapType("euroTradeRouteCapture");

	rmSetLightingSet(lightingSet);
	cbeShowWorldSetterMessage(terrainMix, baseTerrain, primaryMapType, secondaryMapType, coastMapType, seaType, lightingSet);
}


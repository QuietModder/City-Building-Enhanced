// CBE Map Messages

// ================================================================
// Display Names
// ================================================================

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
	if (biomeTheme == cbeBiomeCave())
		return("Cave");
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
	if (regionFlavor == cbeRegionUnderground())
		return("Underground");
	return("North America");
}

string cbeGetGeographyLandformName(int geographyLandform = 1)
{
	if (geographyLandform == cbeGeoRiverBasin())
		return("River Basin");
	if (geographyLandform == cbeGeoDelta())
		return("Delta");
	if (geographyLandform == cbeGeoHarbor())
		return("Harbor");
	if (geographyLandform == cbeGeoPeninsula())
		return("Peninsula");
	if (geographyLandform == cbeGeoFjord())
		return("Fjord");
	if (geographyLandform == cbeGeoCanyonlands())
		return("Canyonlands");
	if (geographyLandform == cbeGeoHighlandValley())
		return("Highland Valley");
	if (geographyLandform == cbeGeoIslandCoast())
		return("Island Coast");
	return("Inland");
}

string cbeGetGeographyModifierName(int geographyModifier = 0)
{
	if (geographyModifier == cbeGeoModCliffCoast())
		return("Cliff Coast");
	if (geographyModifier == cbeGeoModRiverCutValley())
		return("River-Cut Valley");
	if (geographyModifier == cbeGeoModMarshLowlands())
		return("Marsh Lowlands");
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return("Broken Highlands");
	if (geographyModifier == cbeGeoModShelteredBay())
		return("Sheltered Bay");
	return("None");
}

string cbeGetDenseWildsName(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeForest())
		return("Dense Forest");
	if (biomeTheme == cbeBiomeJungle())
		return("Dense Jungle");
	return("Dense Wilds");
}

// ================================================================
// Feature List
// ================================================================

string cbeBuildFeatureList(int biomeTheme = 1, int hasTradeRoute = 0, int hasRiver = 0, int hasCliffs = 0, int hasMountains = 0, int hasCaves = 0, int hasCoast = 0, int hasDenseWilds = 0, int hasAncientRuins = 0)
{
	string featureList = "";
	int featureCount = 0;

	if (hasTradeRoute == 1)
	{
		featureList = "Trade Route";
		featureCount = featureCount + 1;
	}
	if (hasRiver == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "River";
		featureCount = featureCount + 1;
	}
	if (hasCliffs == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "Cliffs";
		featureCount = featureCount + 1;
	}
	if (hasMountains == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "Mountains";
		featureCount = featureCount + 1;
	}
	if (hasCaves == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "Caves";
		featureCount = featureCount + 1;
	}
	if (hasCoast == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "Coast";
		featureCount = featureCount + 1;
	}
	if (hasDenseWilds == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + cbeGetDenseWildsName(biomeTheme);
		featureCount = featureCount + 1;
	}
	if (hasAncientRuins == 1)
	{
		if (featureCount > 0)
			featureList = featureList + ", ";
		featureList = featureList + "Ancient Ruins";
		featureCount = featureCount + 1;
	}
	if (featureCount == 0)
		featureList = "Open Wilderness";

	return(featureList);
}

// ================================================================
// Summary Triggers
// ================================================================

void cbeShowMapSummaryMessage(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0, int hasTradeRoute = 0, int hasRiver = 0, int hasCliffs = 0, int hasMountains = 0, int hasCaves = 0, int hasCoast = 0, int hasDenseWilds = 0, int hasAncientRuins = 0)
{
	string biomeName = cbeGetBiomeName(biomeTheme);
	string regionName = cbeGetRegionName(regionFlavor);
	string geographyLandformName = cbeGetGeographyLandformName(geographyLandform);
	string geographyModifierName = cbeGetGeographyModifierName(geographyModifier);
	string featureList = cbeBuildFeatureList(
		biomeTheme,
		hasTradeRoute, hasRiver, hasCliffs, hasMountains,
		hasCaves, hasCoast, hasDenseWilds, hasAncientRuins
	);
	string summaryMessage = "<font=largeingame 24><color=0.4,1,0.45>CBE Wilderness: "+biomeName+" / "+regionName+" / "+geographyLandformName+" ("+geographyModifierName+") / Features: "+featureList;

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
	rmSetTriggerEffectParam("Message", summaryMessage, false);
}

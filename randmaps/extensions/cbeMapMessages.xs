// CBE Map Messages

// ================================================================
// Feature Names
// ================================================================

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

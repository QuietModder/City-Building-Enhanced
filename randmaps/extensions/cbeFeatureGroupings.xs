// CBE Feature Groupings

// ================================================================
// Minor Civ Setup
// ================================================================

void cbeSetupFeatureGroupingSubCivs(int hasCityStates = 0, int hasDistricts = 0)
{
	int subCivSlot = 0;

	if (hasCityStates == 1)
	{
		rmSetSubCiv(subCivSlot, "CBELatinCityState", true);
		subCivSlot = subCivSlot + 1;
	}

	if (hasDistricts == 1)
	{
		rmSetSubCiv(subCivSlot, "SPCArtilleryDistrict", true);
		subCivSlot = subCivSlot + 1;
		rmSetSubCiv(subCivSlot, "SPCMarketDistrict", true);
		subCivSlot = subCivSlot + 1;
		rmSetSubCiv(subCivSlot, "SPCReligiousDistrict", true);
		subCivSlot = subCivSlot + 1;
		rmSetSubCiv(subCivSlot, "SPCMilitaryDistrict", true);
	}
}

// ================================================================
// City State Ownership
// ================================================================

void cbeRequireCityStateTradingPost(int socketUnitID = -1, int playerID = 0)
{
	rmAddTriggerCondition("Units in Area");
	rmSetTriggerConditionParam("DstObject", ""+socketUnitID);
	rmSetTriggerConditionParamInt("Player", playerID);
	rmSetTriggerConditionParamInt("Dist", 16);
	rmSetTriggerConditionParam("UnitType", "TradingPost");
	rmSetTriggerConditionParam("Op", ">=");
	rmSetTriggerConditionParamFloat("Count", 1);
}

void cbeRequireNoCityStateTradingPost(int socketUnitID = -1, int playerID = 0)
{
	rmAddTriggerCondition("Units in Area");
	rmSetTriggerConditionParam("DstObject", ""+socketUnitID);
	rmSetTriggerConditionParamInt("Player", playerID);
	rmSetTriggerConditionParamInt("Dist", 16);
	rmSetTriggerConditionParam("UnitType", "TradingPost");
	rmSetTriggerConditionParam("Op", "==");
	rmSetTriggerConditionParamFloat("Count", 0);
}

void cbeConvertCityStateGrouping(int groupingInstanceID = -1, int playerID = 0)
{
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "Building");
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "NativeBuilding");
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "LogicalTypeBuildingsNotWalls");
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "EmbellishmentClass");
}

void cbeConvertFeatureRewardBuildings(int groupingInstanceID = -1, int playerID = 0)
{
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "AbstractSPCVillageBuilding");
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "AbstractFarm");
	rmAddTriggerEffect("Grouping Convert Unit Type");
	rmSetTriggerEffectParamInt("InstanceID", groupingInstanceID);
	rmSetTriggerEffectParamInt("PlayerID", playerID);
	rmSetTriggerEffectParam("UnitType", "CBEVillageMill");
}

void cbeCreateCityStateOwnership(int cityStateIndex = 0, int groupingInstanceID = -1, int socketUnitID = -1)
{
	int cityStatePlayerID = 0;
	int cityStateCheckPlayerID = 0;
	if (socketUnitID < 0)
		return;

	for (cityStatePlayerID = 1; <= cNumberNonGaiaPlayers)
	{
		rmCreateTrigger("CBE_CityState_"+cityStateIndex+"_ON_Plr"+cityStatePlayerID);
		rmCreateTrigger("CBE_CityState_"+cityStateIndex+"_OFF_Plr"+cityStatePlayerID);

		rmSwitchToTrigger(rmTriggerID("CBE_CityState_"+cityStateIndex+"_ON_Plr"+cityStatePlayerID));
		cbeRequireCityStateTradingPost(socketUnitID, cityStatePlayerID);
		cbeConvertCityStateGrouping(groupingInstanceID, cityStatePlayerID);
		rmAddTriggerEffect("Fire Event");
		rmSetTriggerEffectParamInt("EventID", rmTriggerID("CBE_CityState_"+cityStateIndex+"_OFF_Plr"+cityStatePlayerID));
		rmSetTriggerPriority(4);
		rmSetTriggerActive(true);
		rmSetTriggerRunImmediately(true);
		rmSetTriggerLoop(false);

		rmSwitchToTrigger(rmTriggerID("CBE_CityState_"+cityStateIndex+"_OFF_Plr"+cityStatePlayerID));
		for (cityStateCheckPlayerID = 1; <= cNumberNonGaiaPlayers)
		{
			cbeRequireNoCityStateTradingPost(socketUnitID, cityStateCheckPlayerID);
		}
		cbeConvertCityStateGrouping(groupingInstanceID, 0);
		rmAddTriggerEffect("Fire Event");
		rmSetTriggerEffectParamInt("EventID", rmTriggerID("CBE_CityState_"+cityStateIndex+"_ON_Plr"+cityStatePlayerID));
		rmSetTriggerPriority(4);
		rmSetTriggerActive(false);
		rmSetTriggerRunImmediately(true);
		rmSetTriggerLoop(false);
	}
}

void cbeRequireFlagOwned(int flagUnitID = -1, int playerID = 0)
{
	rmAddTriggerCondition("Units Owned");
	rmSetTriggerConditionParamInt("Player", playerID);
	rmSetTriggerConditionParam("SrcObject", ""+flagUnitID);
}

void cbeRequirePlayerCaptureUnitsNearFlag(int flagUnitID = -1, int playerID = 0)
{
	rmAddTriggerCondition("Units in Area");
	rmSetTriggerConditionParam("DstObject", ""+flagUnitID);
	rmSetTriggerConditionParamInt("Player", playerID);
	rmSetTriggerConditionParamInt("Dist", 18);
	rmSetTriggerConditionParam("UnitType", "LogicalTypeLandMilitary");
	rmSetTriggerConditionParam("Op", ">=");
	rmSetTriggerConditionParamFloat("Count", 1);
}

void cbeRequireNoPlayerCaptureUnitsNearFlag(int flagUnitID = -1, int playerID = 0)
{
	rmAddTriggerCondition("Units in Area");
	rmSetTriggerConditionParam("DstObject", ""+flagUnitID);
	rmSetTriggerConditionParamInt("Player", playerID);
	rmSetTriggerConditionParamInt("Dist", 18);
	rmSetTriggerConditionParam("UnitType", "LogicalTypeLandMilitary");
	rmSetTriggerConditionParam("Op", "==");
	rmSetTriggerConditionParamFloat("Count", 0);
}

void cbeConvertFlagToPlayer(int flagUnitID = -1, int sourcePlayerID = 0, int targetPlayerID = 0)
{
	rmAddTriggerEffect("Convert Units in Area");
	rmSetTriggerEffectParamInt("SrcObject", flagUnitID, false);
	rmSetTriggerEffectParamInt("SrcPlayer", sourcePlayerID, false);
	rmSetTriggerEffectParamInt("TrgPlayer", targetPlayerID, false);
	rmSetTriggerEffectParam("UnitType", "deSPCCapturableFlag", false);
	rmSetTriggerEffectParamInt("Dist", 4, false);
}

void cbeCreateFlagGroupingOwnership(int featureIndex = 0, int groupingInstanceID = -1, int flagUnitID = -1)
{
	int featurePlayerID = 0;
	int currentOwnerPlayerID = 0;
	int challengerPlayerID = 0;
	if (flagUnitID < 0)
		return;

	for (featurePlayerID = 1; <= cNumberNonGaiaPlayers)
	{
		rmCreateTrigger("CBE_FlagFeature_"+featureIndex+"_Plr"+featurePlayerID);
		rmSwitchToTrigger(rmTriggerID("CBE_FlagFeature_"+featureIndex+"_Plr"+featurePlayerID));
		cbeRequireFlagOwned(flagUnitID, featurePlayerID);
		cbeConvertFeatureRewardBuildings(groupingInstanceID, featurePlayerID);
		rmSetTriggerPriority(4);
		rmSetTriggerActive(true);
		rmSetTriggerRunImmediately(true);
		rmSetTriggerLoop(true);
	}

	for (currentOwnerPlayerID = 1; <= cNumberNonGaiaPlayers)
	{
		for (challengerPlayerID = 1; <= cNumberNonGaiaPlayers)
		{
			if (challengerPlayerID != currentOwnerPlayerID)
			{
				rmCreateTrigger("CBE_FlagFeature_"+featureIndex+"_P"+currentOwnerPlayerID+"_To_P"+challengerPlayerID);
				rmSwitchToTrigger(rmTriggerID("CBE_FlagFeature_"+featureIndex+"_P"+currentOwnerPlayerID+"_To_P"+challengerPlayerID));
				cbeRequireFlagOwned(flagUnitID, currentOwnerPlayerID);
				cbeRequirePlayerCaptureUnitsNearFlag(flagUnitID, challengerPlayerID);
				cbeRequireNoPlayerCaptureUnitsNearFlag(flagUnitID, currentOwnerPlayerID);
				cbeConvertFlagToPlayer(flagUnitID, currentOwnerPlayerID, challengerPlayerID);
				cbeConvertFeatureRewardBuildings(groupingInstanceID, challengerPlayerID);
				rmSetTriggerPriority(4);
				rmSetTriggerActive(true);
				rmSetTriggerRunImmediately(true);
				rmSetTriggerLoop(true);
			}
		}
	}
}

void cbePlaceFeatureGroupings(void)
{

	// ================================================================
	// Feature Groupings
	// ================================================================

	return;

	int cbeCityStateOutpost1 = rmCreateGrouping("cbe city state outpost 1", "cbe_city_state_outpost_01");
	int cbeCityStateOutpost2 = rmCreateGrouping("cbe city state outpost 2", "cbe_city_state_outpost_02");
	int cbeCityStateOutpost3 = rmCreateGrouping("cbe city state outpost 3", "cbe_city_state_outpost_03");
	int cbeCityStateOutpost4 = rmCreateGrouping("cbe city state outpost 4", "cbe_city_state_outpost_04");
	int cbeCityStateVenetian1 = rmCreateGrouping("cbe city state venetian 1", "cbe_city_state_venetian_01");
	int cbeCityStateVenetian2 = rmCreateGrouping("cbe city state venetian 2", "cbe_city_state_venetian_02");
	int cbeCityStateVenetian3 = rmCreateGrouping("cbe city state venetian 3", "cbe_city_state_venetian_03");
	int cbeCityStateVenetian4 = rmCreateGrouping("cbe city state venetian 4", "cbe_city_state_venetian_04");

	rmSetGroupingMinDistance(cbeCityStateOutpost1, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateOutpost1, 0.0);
	rmSetGroupingMinDistance(cbeCityStateOutpost2, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateOutpost2, 0.0);
	rmSetGroupingMinDistance(cbeCityStateOutpost3, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateOutpost3, 0.0);
	rmSetGroupingMinDistance(cbeCityStateOutpost4, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateOutpost4, 0.0);
	rmSetGroupingMinDistance(cbeCityStateVenetian1, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateVenetian1, 0.0);
	rmSetGroupingMinDistance(cbeCityStateVenetian2, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateVenetian2, 0.0);
	rmSetGroupingMinDistance(cbeCityStateVenetian3, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateVenetian3, 0.0);
	rmSetGroupingMinDistance(cbeCityStateVenetian4, 0.0);
	rmSetGroupingMaxDistance(cbeCityStateVenetian4, 0.0);

	int cbeCityStateVenetianInstance1 = rmPlaceGroupingInstanceAtLoc(cbeCityStateVenetian1, 0.25, 0.82, 0);
	int cbeCityStateVenetianInstance2 = rmPlaceGroupingInstanceAtLoc(cbeCityStateVenetian2, 0.42, 0.82, 0);
	int cbeCityStateVenetianInstance3 = rmPlaceGroupingInstanceAtLoc(cbeCityStateVenetian3, 0.58, 0.82, 0);
	int cbeCityStateVenetianInstance4 = rmPlaceGroupingInstanceAtLoc(cbeCityStateVenetian4, 0.75, 0.82, 0);
	int cbeCityStateOutpostInstance1 = rmPlaceGroupingInstanceAtLoc(cbeCityStateOutpost1, 0.25, 0.58, 0);
	int cbeCityStateOutpostInstance2 = rmPlaceGroupingInstanceAtLoc(cbeCityStateOutpost2, 0.42, 0.58, 0);
	int cbeCityStateOutpostInstance3 = rmPlaceGroupingInstanceAtLoc(cbeCityStateOutpost3, 0.58, 0.58, 0);
	int cbeCityStateOutpostInstance4 = rmPlaceGroupingInstanceAtLoc(cbeCityStateOutpost4, 0.75, 0.58, 0);

	int cbeCityStateVenetianSocket1 = rmGetGroupingInstanceUnitByType(cbeCityStateVenetianInstance1, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateVenetianSocket2 = rmGetGroupingInstanceUnitByType(cbeCityStateVenetianInstance2, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateVenetianSocket3 = rmGetGroupingInstanceUnitByType(cbeCityStateVenetianInstance3, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateVenetianSocket4 = rmGetGroupingInstanceUnitByType(cbeCityStateVenetianInstance4, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateOutpostSocket1 = rmGetGroupingInstanceUnitByType(cbeCityStateOutpostInstance1, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateOutpostSocket2 = rmGetGroupingInstanceUnitByType(cbeCityStateOutpostInstance2, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateOutpostSocket3 = rmGetGroupingInstanceUnitByType(cbeCityStateOutpostInstance3, "cbe_Grouping_deSPCSocketCityState");
	int cbeCityStateOutpostSocket4 = rmGetGroupingInstanceUnitByType(cbeCityStateOutpostInstance4, "cbe_Grouping_deSPCSocketCityState");

	cbeCreateCityStateOwnership(400, cbeCityStateVenetianInstance1, cbeCityStateVenetianSocket1);
	cbeCreateCityStateOwnership(401, cbeCityStateVenetianInstance2, cbeCityStateVenetianSocket2);
	cbeCreateCityStateOwnership(402, cbeCityStateVenetianInstance3, cbeCityStateVenetianSocket3);
	cbeCreateCityStateOwnership(403, cbeCityStateVenetianInstance4, cbeCityStateVenetianSocket4);
	cbeCreateCityStateOwnership(404, cbeCityStateOutpostInstance1, cbeCityStateOutpostSocket1);
	cbeCreateCityStateOwnership(405, cbeCityStateOutpostInstance2, cbeCityStateOutpostSocket2);
	cbeCreateCityStateOwnership(406, cbeCityStateOutpostInstance3, cbeCityStateOutpostSocket3);
	cbeCreateCityStateOwnership(407, cbeCityStateOutpostInstance4, cbeCityStateOutpostSocket4);
	rmEchoInfo("CBE city-state groupings placed");
}

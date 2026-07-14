// CBE Feature Groupings

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

	int cbeFeatureFarming1 = rmCreateGrouping("cbe feature farming 1", "cbe_feature_farming_01");
	int cbeFeatureFarming2 = rmCreateGrouping("cbe feature farming 2", "cbe_feature_farming_02");
	int cbeFeatureFarming3 = rmCreateGrouping("cbe feature farming 3", "cbe_feature_farming_03");
	int cbeFeatureLumber1 = rmCreateGrouping("cbe feature lumber 1", "cbe_feature_lumber_01");
	int cbeFeatureLumber2 = rmCreateGrouping("cbe feature lumber 2", "cbe_feature_lumber_02");
	int cbeFeatureLumber3 = rmCreateGrouping("cbe feature lumber 3", "cbe_feature_lumber_03");
	int cbeFeatureMining1 = rmCreateGrouping("cbe feature mining 1", "cbe_feature_mining_01");
	int cbeFeatureMining2 = rmCreateGrouping("cbe feature mining 2", "cbe_feature_mining_02");
	int cbeFeatureMining3 = rmCreateGrouping("cbe feature mining 3", "cbe_feature_mining_03");
	int cbeFeatureDistrict1 = rmCreateGrouping("cbe feature district 1", "cbe_feature_district_01");
	int cbeFeatureDistrict2 = rmCreateGrouping("cbe feature district 2", "cbe_feature_district_02");
	int cbeFeatureDistrict3 = rmCreateGrouping("cbe feature district 3", "cbe_feature_district_03");
	int cbeFeatureDistrict4 = rmCreateGrouping("cbe feature district 4", "cbe_feature_district_04");
	int cbeFeatureCapture1 = rmCreateGrouping("cbe feature capture 1", "cbe_feature_capture_point_01");
	int cbeFeatureCapture2 = rmCreateGrouping("cbe feature capture 2", "cbe_feature_capture_point_02");
	int cbeFeatureCapture3 = rmCreateGrouping("cbe feature capture 3", "cbe_feature_capture_point_03");
	int cbeFeatureCapture4 = rmCreateGrouping("cbe feature capture 4", "cbe_feature_capture_point_04");
	int cbeFeatureCapture5 = rmCreateGrouping("cbe feature capture 5", "cbe_feature_capture_point_05");
	int cbeFeatureRedoubt5 = rmCreateGrouping("cbe feature redoubt 5", "cbe_feature_redoubt_05");
	int cbeFeatureRedoubt7 = rmCreateGrouping("cbe feature redoubt 7", "cbe_feature_redoubt_07");

	rmSetGroupingMinDistance(cbeFeatureFarming1, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureFarming1, 0.0);
	rmSetGroupingMinDistance(cbeFeatureFarming2, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureFarming2, 0.0);
	rmSetGroupingMinDistance(cbeFeatureFarming3, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureFarming3, 0.0);
	rmSetGroupingMinDistance(cbeFeatureLumber1, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureLumber1, 0.0);
	rmSetGroupingMinDistance(cbeFeatureLumber2, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureLumber2, 0.0);
	rmSetGroupingMinDistance(cbeFeatureLumber3, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureLumber3, 0.0);
	rmSetGroupingMinDistance(cbeFeatureMining1, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureMining1, 0.0);
	rmSetGroupingMinDistance(cbeFeatureMining2, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureMining2, 0.0);
	rmSetGroupingMinDistance(cbeFeatureMining3, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureMining3, 0.0);
	rmSetGroupingMinDistance(cbeFeatureDistrict1, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureDistrict1, 0.0);
	rmSetGroupingMinDistance(cbeFeatureDistrict2, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureDistrict2, 0.0);
	rmSetGroupingMinDistance(cbeFeatureDistrict3, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureDistrict3, 0.0);
	rmSetGroupingMinDistance(cbeFeatureDistrict4, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureDistrict4, 0.0);
	rmSetGroupingMinDistance(cbeFeatureCapture1, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureCapture1, 0.0);
	rmSetGroupingMinDistance(cbeFeatureCapture2, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureCapture2, 0.0);
	rmSetGroupingMinDistance(cbeFeatureCapture3, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureCapture3, 0.0);
	rmSetGroupingMinDistance(cbeFeatureCapture4, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureCapture4, 0.0);
	rmSetGroupingMinDistance(cbeFeatureCapture5, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureCapture5, 0.0);
	rmSetGroupingMinDistance(cbeFeatureRedoubt5, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureRedoubt5, 0.0);
	rmSetGroupingMinDistance(cbeFeatureRedoubt7, 0.0);
	rmSetGroupingMaxDistance(cbeFeatureRedoubt7, 0.0);

	int cbeFeatureRedoubtInstance5 = rmPlaceGroupingInstanceAtLoc(cbeFeatureRedoubt5, 0.27, 0.16, 0);
	int cbeFeatureRedoubtInstance7 = rmPlaceGroupingInstanceAtLoc(cbeFeatureRedoubt7, 0.42, 0.16, 0);
	int cbeFeatureDistrictInstance1 = rmPlaceGroupingInstanceAtLoc(cbeFeatureDistrict1, 0.57, 0.16, 0);
	int cbeFeatureDistrictInstance2 = rmPlaceGroupingInstanceAtLoc(cbeFeatureDistrict2, 0.72, 0.16, 0);
	int cbeFeatureDistrictInstance3 = rmPlaceGroupingInstanceAtLoc(cbeFeatureDistrict3, 0.87, 0.16, 0);

	int cbeFeatureDistrictInstance4 = rmPlaceGroupingInstanceAtLoc(cbeFeatureDistrict4, 0.12, 0.36, 0);
	int cbeFeatureCaptureInstance1 = rmPlaceGroupingInstanceAtLoc(cbeFeatureCapture1, 0.27, 0.36, 0);
	int cbeFeatureCaptureInstance2 = rmPlaceGroupingInstanceAtLoc(cbeFeatureCapture2, 0.42, 0.36, 0);
	int cbeFeatureCaptureInstance3 = rmPlaceGroupingInstanceAtLoc(cbeFeatureCapture3, 0.57, 0.36, 0);
	int cbeFeatureCaptureInstance4 = rmPlaceGroupingInstanceAtLoc(cbeFeatureCapture4, 0.72, 0.36, 0);
	int cbeFeatureCaptureInstance5 = rmPlaceGroupingInstanceAtLoc(cbeFeatureCapture5, 0.87, 0.36, 0);

	int cbeFeatureFarmingInstance1 = rmPlaceGroupingInstanceAtLoc(cbeFeatureFarming1, 0.12, 0.56, 0);
	int cbeFeatureFarmingInstance2 = rmPlaceGroupingInstanceAtLoc(cbeFeatureFarming2, 0.27, 0.56, 0);
	int cbeFeatureFarmingInstance3 = rmPlaceGroupingInstanceAtLoc(cbeFeatureFarming3, 0.42, 0.56, 0);
	int cbeFeatureLumberInstance1 = rmPlaceGroupingInstanceAtLoc(cbeFeatureLumber1, 0.57, 0.56, 0);
	int cbeFeatureLumberInstance2 = rmPlaceGroupingInstanceAtLoc(cbeFeatureLumber2, 0.72, 0.56, 0);
	int cbeFeatureLumberInstance3 = rmPlaceGroupingInstanceAtLoc(cbeFeatureLumber3, 0.87, 0.56, 0);

	int cbeFeatureMiningInstance1 = rmPlaceGroupingInstanceAtLoc(cbeFeatureMining1, 0.12, 0.76, 0);
	int cbeFeatureMiningInstance2 = rmPlaceGroupingInstanceAtLoc(cbeFeatureMining2, 0.27, 0.76, 0);
	int cbeFeatureMiningInstance3 = rmPlaceGroupingInstanceAtLoc(cbeFeatureMining3, 0.42, 0.76, 0);

	int cbeFeatureRedoubtFlag5 = rmGetGroupingInstanceUnitByType(cbeFeatureRedoubtInstance5, "deSPCCapturableFlag");
	int cbeFeatureRedoubtFlag7 = rmGetGroupingInstanceUnitByType(cbeFeatureRedoubtInstance7, "deSPCCapturableFlag");
	int cbeFeatureDistrictSocket1 = rmGetGroupingInstanceUnitByType(cbeFeatureDistrictInstance1, "deSPCSocketArtilleryDistrict");
	int cbeFeatureDistrictSocket2 = rmGetGroupingInstanceUnitByType(cbeFeatureDistrictInstance2, "deSPCSocketMarketDistrict");
	int cbeFeatureDistrictSocket3 = rmGetGroupingInstanceUnitByType(cbeFeatureDistrictInstance3, "deSPCSocketReligiousDistrict");
	int cbeFeatureDistrictSocket4 = rmGetGroupingInstanceUnitByType(cbeFeatureDistrictInstance4, "deSPCSocketMilitaryDistrict");
	int cbeFeatureCaptureFlag1 = rmGetGroupingInstanceUnitByType(cbeFeatureCaptureInstance1, "deSPCCapturableFlag");
	int cbeFeatureCaptureFlag2 = rmGetGroupingInstanceUnitByType(cbeFeatureCaptureInstance2, "deSPCCapturableFlag");
	int cbeFeatureCaptureFlag3 = rmGetGroupingInstanceUnitByType(cbeFeatureCaptureInstance3, "deSPCCapturableFlag");
	int cbeFeatureCaptureFlag4 = rmGetGroupingInstanceUnitByType(cbeFeatureCaptureInstance4, "deSPCCapturableFlag");
	int cbeFeatureCaptureFlag5 = rmGetGroupingInstanceUnitByType(cbeFeatureCaptureInstance5, "deSPCCapturableFlag");
	int cbeFeatureFarmingFlag1 = rmGetGroupingInstanceUnitByType(cbeFeatureFarmingInstance1, "deSPCCapturableFlag");
	int cbeFeatureFarmingFlag2 = rmGetGroupingInstanceUnitByType(cbeFeatureFarmingInstance2, "deSPCCapturableFlag");
	int cbeFeatureFarmingFlag3 = rmGetGroupingInstanceUnitByType(cbeFeatureFarmingInstance3, "deSPCCapturableFlag");
	int cbeFeatureLumberFlag1 = rmGetGroupingInstanceUnitByType(cbeFeatureLumberInstance1, "deSPCCapturableFlag");
	int cbeFeatureLumberFlag2 = rmGetGroupingInstanceUnitByType(cbeFeatureLumberInstance2, "deSPCCapturableFlag");
	int cbeFeatureLumberFlag3 = rmGetGroupingInstanceUnitByType(cbeFeatureLumberInstance3, "deSPCCapturableFlag");
	int cbeFeatureMiningFlag1 = rmGetGroupingInstanceUnitByType(cbeFeatureMiningInstance1, "deSPCCapturableFlag");
	int cbeFeatureMiningFlag2 = rmGetGroupingInstanceUnitByType(cbeFeatureMiningInstance2, "deSPCCapturableFlag");
	int cbeFeatureMiningFlag3 = rmGetGroupingInstanceUnitByType(cbeFeatureMiningInstance3, "deSPCCapturableFlag");

	cbeCreateFlagGroupingOwnership(202, cbeFeatureRedoubtInstance5, cbeFeatureRedoubtFlag5);
	cbeCreateFlagGroupingOwnership(203, cbeFeatureRedoubtInstance7, cbeFeatureRedoubtFlag7);
	cbeCreateCityStateOwnership(304, cbeFeatureDistrictInstance1, cbeFeatureDistrictSocket1);
	cbeCreateCityStateOwnership(305, cbeFeatureDistrictInstance2, cbeFeatureDistrictSocket2);
	cbeCreateCityStateOwnership(306, cbeFeatureDistrictInstance3, cbeFeatureDistrictSocket3);
	cbeCreateCityStateOwnership(307, cbeFeatureDistrictInstance4, cbeFeatureDistrictSocket4);
	cbeCreateFlagGroupingOwnership(208, cbeFeatureCaptureInstance1, cbeFeatureCaptureFlag1);
	cbeCreateFlagGroupingOwnership(209, cbeFeatureCaptureInstance2, cbeFeatureCaptureFlag2);
	cbeCreateFlagGroupingOwnership(210, cbeFeatureCaptureInstance3, cbeFeatureCaptureFlag3);
	cbeCreateFlagGroupingOwnership(211, cbeFeatureCaptureInstance4, cbeFeatureCaptureFlag4);
	cbeCreateFlagGroupingOwnership(212, cbeFeatureCaptureInstance5, cbeFeatureCaptureFlag5);
	cbeCreateFlagGroupingOwnership(213, cbeFeatureFarmingInstance1, cbeFeatureFarmingFlag1);
	cbeCreateFlagGroupingOwnership(214, cbeFeatureFarmingInstance2, cbeFeatureFarmingFlag2);
	cbeCreateFlagGroupingOwnership(215, cbeFeatureFarmingInstance3, cbeFeatureFarmingFlag3);
	cbeCreateFlagGroupingOwnership(216, cbeFeatureLumberInstance1, cbeFeatureLumberFlag1);
	cbeCreateFlagGroupingOwnership(217, cbeFeatureLumberInstance2, cbeFeatureLumberFlag2);
	cbeCreateFlagGroupingOwnership(218, cbeFeatureLumberInstance3, cbeFeatureLumberFlag3);
	cbeCreateFlagGroupingOwnership(219, cbeFeatureMiningInstance1, cbeFeatureMiningFlag1);
	cbeCreateFlagGroupingOwnership(220, cbeFeatureMiningInstance2, cbeFeatureMiningFlag2);
	cbeCreateFlagGroupingOwnership(221, cbeFeatureMiningInstance3, cbeFeatureMiningFlag3);
	rmEchoInfo("CBE Feature Groupings placed");
}

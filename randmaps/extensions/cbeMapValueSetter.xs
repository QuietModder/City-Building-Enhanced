// CBE Map Value Setter

// ================================================================
// Biome Values
// ================================================================

/*
	Description: Surface woodland biome for temperate wilderness maps.

	Possible Regions: North America, Europe, Asia.
	Possible Geography: Inland, River Basin, Highland Valley, Harbor, Peninsula, Canyonlands.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense wilds, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: Central/South America, Africa, Island, Underground.
	Blocked Geography: Delta, Fjord, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomeForest(void)
{
	return(1);
}

/*
	Description: Tropical dense-growth biome for heavy jungle maps.

	Possible Regions: Central/South America, Africa, Asia.
	Possible Geography: Inland, River Basin, Delta, Harbor, Peninsula.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense jungle, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: North America, Europe, Island, Underground.
	Blocked Geography: Fjord, Canyonlands, Highland Valley, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomeJungle(void)
{
	return(2);
}

/*
	Description: Arid biome for desert, badlands, and dry frontier maps.

	Possible Regions: Africa, Asia, North America.
	Possible Geography: Inland, River Basin, Harbor, Peninsula, Canyonlands.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   sparse dense wilds, ancient ruins, city states,
						   districts, feature villages, outlaw camps,
						   merchant outposts.

	Blocked Regions: Europe, Central/South America, Island, Underground.
	Blocked Geography: Delta, Fjord, Highland Valley, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomeDesert(void)
{
	return(3);
}

/*
	Description: Open land biome for grassland, steppe, and broad plains maps.

	Possible Regions: North America, Europe, Africa, Asia.
	Possible Geography: Inland, River Basin, Highland Valley, Harbor, Peninsula, Canyonlands.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense wilds, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: Central/South America, Island, Underground.
	Blocked Geography: Delta, Fjord, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomePlains(void)
{
	return(4);
}

/*
	Description: Rugged highland biome for mountain and foothill maps.

	Possible Regions: North America, Europe, Central/South America, Asia.
	Possible Geography: Inland, River Basin, Fjord, Canyonlands, Highland Valley.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense wilds, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: Africa, Island, Underground.
	Blocked Geography: Delta, Harbor, Peninsula, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomeMountain(void)
{
	return(5);
}

/*
	Description: Water-adjacent biome for wetlands, islands, coasts, and river mouths.

	Possible Regions: Central/South America, North America, Asia, Island.
	Possible Geography: River Basin, Delta, Harbor, Peninsula, Island Coast.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense wilds, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: Europe, Africa, Underground.
	Blocked Geography: Inland, Fjord, Canyonlands, Highland Valley.
	Blocked Map Features: None by biome.
*/
int cbeBiomeWetlandIsland(void)
{
	return(6);
}

/*
	Description: Cold surface biome for snowy, northern, and harsh frontier maps.

	Possible Regions: North America, Europe, Asia.
	Possible Geography: Inland, River Basin, Fjord, Canyonlands, Highland Valley.
	Possible Map Features: Rivers, cliffs, mountains, surface caves, coast,
						   dense wilds, ancient ruins, city states, districts,
						   feature villages, outlaw camps, merchant outposts.

	Blocked Regions: Central/South America, Africa, Island, Underground.
	Blocked Geography: Delta, Harbor, Peninsula, Island Coast.
	Blocked Map Features: None by biome.
*/
int cbeBiomeColdNorth(void)
{
	return(7);
}

/*
	Description: Underground biome for full cave maps.

	Possible Regions: Underground.
	Possible Geography: River Basin, Canyonlands.
	Possible Map Features: Rivers, cliffs, ancient ruins, outlaw camps.

	Blocked Regions: North America, Europe, Asia, Central/South America, Africa, Island.
	Blocked Geography: Inland, Delta, Harbor, Peninsula, Fjord, Highland Valley, Island Coast.
	Blocked Map Features: Mountains, surface caves, coast, dense wilds,
						  city states, districts, feature villages,
						  merchant outposts.
*/
int cbeBiomeCave(void)
{
	return(8);
}

// ================================================================
// Region Values
// ================================================================

// North American flavor. Used for native/wildlife/theme weighting.
int cbeRegionNorthAmerica(void)
{
	return(1);
}

// European flavor. Used for city states, districts, and European native themes.
int cbeRegionEurope(void)
{
	return(2);
}

// Asian flavor. Used for Asian native/wildlife/theme weighting.
int cbeRegionAsia(void)
{
	return(3);
}

// Central/South American flavor. Used for jungle, ruins, and native theme weighting.
int cbeRegionSouthAmerica(void)
{
	return(4);
}

// African flavor. Used for desert/jungle/plains wildlife and native theme weighting.
int cbeRegionAfrica(void)
{
	return(5);
}

// Island flavor. Used for coast, island, and wetland map weighting.
int cbeRegionIsland(void)
{
	return(6);
}

// Cave-only flavor used when the whole map is underground.
int cbeRegionUnderground(void)
{
	return(7);
}

// ================================================================
// Geography Values
// ================================================================

/*
	Description: Default landform when no major shaping feature dominates the map.

	Terrain Identity: Broad inland wilderness with flexible open space.
	Expected Shape: Mostly continuous land with room for forests, ruins, camps,
					villages, and later trade routes.
	Forced Features: None by landform.

	Blocked Features: None by landform.
*/
int cbeGeoInland(void)
{
	return(1);
}

/*
	Description: River-focused map shape.

	Terrain Identity: Map organized around one or more major rivers.
	Expected Shape: River corridors, crossings, floodplain pockets, and settlement
					space near but not directly inside river paths.
	Forced Features: River.

	Blocked Features: None by landform.
*/
int cbeGeoRiverBasin(void)
{
	return(2);
}

/*
	Description: River-mouth/coastal wetland map shape.

	Terrain Identity: Lowland river system meeting coastal or wet terrain.
	Expected Shape: River branches, marshy lowlands, shallow crossings, and softer
					land divisions than cliffs or mountains.
	Forced Features: River, coast.

	Blocked Features: None by landform.
*/
int cbeGeoDelta(void)
{
	return(3);
}

/*
	Description: Protected coastal map shape.

	Terrain Identity: Sheltered coastal map with a bay, harbor, or protected shoreline.
	Expected Shape: Coastline edge, harbor pocket, shoreline routes, and possible
					city/merchant features near coastal access.
	Forced Features: Coast.

	Blocked Features: None by landform.
*/
int cbeGeoHarbor(void)
{
	return(4);
}

/*
	Description: Land projection/coastal map shape.

	Terrain Identity: Main landmass extends into water or is bounded by coast.
	Expected Shape: Narrower land necks, coastal edges, exposed approaches, and
					chokepoints without necessarily becoming island-heavy.
	Forced Features: Coast.

	Blocked Features: None by landform.
*/
int cbeGeoPeninsula(void)
{
	return(5);
}

/*
	Description: Cold or mountain coastal valley shape.

	Terrain Identity: Steep coastal valley with rugged sides and water influence.
	Expected Shape: Long narrow water/shoreline cuts, cliff walls, mountain edges,
					and limited crossings or passes.
	Forced Features: Coast, cliffs, mountains.

	Blocked Features: None by landform.
*/
int cbeGeoFjord(void)
{
	return(6);
}

/*
	Description: Broken canyon map shape.

	Terrain Identity: Dry or rugged map shaped by ravines, mesas, and canyon cuts.
	Expected Shape: Cliff bands, broken paths, canyon corridors, and strong terrain
					landmarks that can shape movement.
	Forced Features: Cliffs.

	Blocked Features: None by landform.
*/
int cbeGeoCanyonlands(void)
{
	return(7);
}

/*
	Description: Mountain basin map shape.

	Terrain Identity: Interior valley surrounded or divided by highland terrain.
	Expected Shape: Mountain edges, valley floors, passes, cliff barriers, and
					protected interior space.
	Forced Features: Cliffs, mountains.

	Blocked Features: None by landform.
*/
int cbeGeoHighlandValley(void)
{
	return(8);
}

/*
	Description: Island/coast map shape.

	Terrain Identity: Shoreline-heavy map with island or coastal structure.
	Expected Shape: Strong water boundaries, coastal routes, separated land pockets,
					and shoreline-focused exploration.
	Forced Features: Coast.

	Blocked Features: None by landform.
*/
int cbeGeoIslandCoast(void)
{
	return(9);
}

/*
	Description: No secondary geography modifier.

	Terrain Identity: Keeps the primary geography clean and unmodified.
	Expected Shape: Uses the selected landform without extra forced terrain flavor.
	Forced Features: None by modifier.

	Blocked Features: None by modifier.
*/
int cbeGeoModNone(void)
{
	return(0);
}

/*
	Description: Secondary geography modifier for coastal cliffs.

	Terrain Identity: Shoreline or water-edge terrain should feel steep and dramatic.
	Expected Shape: Cliff-backed coast, harder shoreline approaches, and stronger
					visual boundary between land and water.
	Forced Features: Coast, cliffs.

	Blocked Features: None by modifier.
*/
int cbeGeoModCliffCoast(void)
{
	return(1);
}

/*
	Description: Secondary geography modifier for rivers cutting through valleys/canyons.

	Terrain Identity: River has carved the terrain instead of simply crossing flat land.
	Expected Shape: River corridor follows a valley, canyon, or low cut through
					higher surrounding terrain.
	Forced Features: River.

	Blocked Features: None by modifier.
*/
int cbeGeoModRiverCutValley(void)
{
	return(2);
}

/*
	Description: Secondary geography modifier for low wet terrain.

	Terrain Identity: Softer, wetter lowlands layered over the main geography.
	Expected Shape: Marsh pockets, flat wet basins, shallow water edges, and slower
					feeling terrain without requiring dense wilds.
	Forced Features: None by modifier.

	Blocked Features: None by modifier.
*/
int cbeGeoModMarshLowlands(void)
{
	return(3);
}

/*
	Description: Secondary geography modifier for rough hills, broken cliffs, and rugged land.

	Terrain Identity: Adds roughness and broken elevation to the selected landform.
	Expected Shape: Scattered highlands, broken cliff lines, rocky movement breaks,
					and stronger wilderness texture.
	Forced Features: Cliffs, mountains.

	Blocked Features: None by modifier.
*/
int cbeGeoModBrokenHighlands(void)
{
	return(4);
}

/*
	Description: Secondary geography modifier for protected coastal/harbor shapes.

	Terrain Identity: Coastline should feel sheltered instead of exposed.
	Expected Shape: Bay-like curve, harbor pocket, safer shoreline, or enclosed
					coastal feature.
	Forced Features: Coast.

	Blocked Features: None by modifier.
*/
int cbeGeoModShelteredBay(void)
{
	return(5);
}

// ================================================================
// Map Feature Values
// ================================================================

int cbeRollMapFeature(int weight = 0)
{
	if (rmRandInt(1, 100) <= weight)
		return(1);
	return(0);
}

/*
	Description: Rogue preset for frontier/outlaw raid forces.

	Unit Theme: Bandits, outlaws, raiders, and tavern-style irregulars.
	Map Bias: North America, plains, desert, and outlaw camp maps.
*/
int cbeRoguePresetOutlaws(void)
{
	return(1);
}

/*
	Description: Rogue preset for organized rogue military forces.

	Unit Theme: Professional soldiers, specialized units, and possible artillery.
	Map Bias: Europe, inland maps, harbor maps, and general fallback use.
*/
int cbeRoguePresetProfessionalArmy(void)
{
	return(2);
}

/*
	Description: Rogue preset for expensive high-danger mercenary forces.

	Unit Theme: Mercenaries and elite hired troops.
	Map Bias: Can appear on any surface map as a high-threat variant.
*/
int cbeRoguePresetMercenaries(void)
{
	return(3);
}

/*
	Description: Rogue preset for desert and dry-region raider forces.

	Unit Theme: Desert raiders, fast attackers, and arid-region irregulars.
	Map Bias: Desert, Africa, Asia, and canyonland maps.
*/
int cbeRoguePresetDesertRaiders(void)
{
	return(4);
}

/*
	Description: Rogue preset for expedition/conquistador-style forces.

	Unit Theme: Conquistadors, expedition soldiers, and colonial adventurers.
	Map Bias: Central/South America, jungle, ruins, and river/coastal exploration maps.
*/
int cbeRoguePresetConquistadors(void)
{
	return(5);
}

int cbeChooseRogueArmyPreset(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	int outlawsWeight = 20;
	int professionalWeight = 20;
	int mercenaryWeight = 15;
	int desertWeight = 15;
	int conquistadorWeight = 15;
	int totalWeight = 0;
	int roll = 0;

	if (regionFlavor == cbeRegionNorthAmerica())
		outlawsWeight = outlawsWeight + 25;
	if (biomeTheme == cbeBiomePlains())
		outlawsWeight = outlawsWeight + 10;
	if (biomeTheme == cbeBiomeDesert())
		outlawsWeight = outlawsWeight + 10;

	if (regionFlavor == cbeRegionEurope())
		professionalWeight = professionalWeight + 25;
	if (geographyLandform == cbeGeoInland() || geographyLandform == cbeGeoHarbor())
		professionalWeight = professionalWeight + 10;

	if (biomeTheme == cbeBiomeDesert())
		desertWeight = desertWeight + 25;
	if (regionFlavor == cbeRegionAfrica() || regionFlavor == cbeRegionAsia())
		desertWeight = desertWeight + 15;
	if (geographyLandform == cbeGeoCanyonlands())
		desertWeight = desertWeight + 10;

	if (regionFlavor == cbeRegionSouthAmerica())
		conquistadorWeight = conquistadorWeight + 30;
	if (biomeTheme == cbeBiomeJungle())
		conquistadorWeight = conquistadorWeight + 10;
	if (geographyLandform == cbeGeoRiverBasin() || geographyLandform == cbeGeoDelta())
		conquistadorWeight = conquistadorWeight + 5;

	if (biomeTheme == cbeBiomeCave())
	{
		outlawsWeight = 30;
		professionalWeight = 15;
		mercenaryWeight = 20;
		desertWeight = 10;
		conquistadorWeight = 5;
	}

	totalWeight = outlawsWeight + professionalWeight + mercenaryWeight + desertWeight + conquistadorWeight;
	roll = rmRandInt(1, totalWeight);

	if (roll <= outlawsWeight)
		return(cbeRoguePresetOutlaws());
	roll = roll - outlawsWeight;
	if (roll <= professionalWeight)
		return(cbeRoguePresetProfessionalArmy());
	roll = roll - professionalWeight;
	if (roll <= mercenaryWeight)
		return(cbeRoguePresetMercenaries());
	roll = roll - mercenaryWeight;
	if (roll <= desertWeight)
		return(cbeRoguePresetDesertRaiders());
	return(cbeRoguePresetConquistadors());
}

// Rolls if city-state groupings can spawn: cbe_city_state_outpost_01-04, cbe_city_state_venetian_01-04.
int cbeRollCityStates(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 30;
	if (regionFlavor == cbeRegionEurope())
		weight = weight + 20;
	else if (regionFlavor == cbeRegionSouthAmerica())
		weight = weight + 10;
	else if (regionFlavor == cbeRegionAfrica())
		weight = weight + 10;
	if (geographyLandform == cbeGeoInland())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

// Rolls if district groupings can spawn: cbe_feature_district_01-04.
int cbeRollDistricts(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 20;
	if (regionFlavor == cbeRegionEurope())
		weight = weight + 15;
	if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoInland())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

// Rolls if village feature groupings can spawn: cbe_feature_farming_01-03, cbe_feature_lumber_01-03, cbe_feature_mining_01-03.
int cbeRollFeatureVillages(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomePlains())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 5;
	return(cbeRollMapFeature(weight));
}

// Rolls if outlaw camp groupings can spawn: cbe_outlaw_trading_camp_01-04.
int cbeRollOutlawCamps(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(cbeRollMapFeature(25));

	int weight = 35;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 15;
	else if (biomeTheme == cbeBiomePlains())
		weight = weight + 10;
	if (regionFlavor == cbeRegionNorthAmerica())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

// Rolls if merchant outpost groupings can spawn: cbe_merchant_01-03.
int cbeRollMerchantOutposts(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 30;
	if (geographyLandform == cbeGeoHarbor())
		weight = weight + 20;
	else if (geographyLandform == cbeGeoPeninsula())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoRiverBasin())
		weight = weight + 10;
	return(cbeRollMapFeature(weight));
}

// ================================================================
// Theme Selection
// ================================================================

// Picks the main biome for the map.
int cbeChooseBiomeTheme(void)
{
	return(rmRandInt(1, 8));
}

// Picks the region flavor allowed by the selected biome.
int cbeChooseRegionFlavor(int biomeTheme = 1)
{
	int themeRoll = -1;

	if (biomeTheme == cbeBiomeCave())
	{
		return(cbeRegionUnderground());
	}
	else if (biomeTheme == cbeBiomeForest())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeJungle())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionSouthAmerica());
		if (themeRoll == 2)
			return(cbeRegionAfrica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeDesert())
	{
		themeRoll = rmRandInt(1, 3);
		if (themeRoll == 1)
			return(cbeRegionAfrica());
		if (themeRoll == 2)
			return(cbeRegionAsia());
		return(cbeRegionNorthAmerica());
	}
	else if (biomeTheme == cbeBiomePlains())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		if (themeRoll == 3)
			return(cbeRegionAfrica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeMountain())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 2)
			return(cbeRegionEurope());
		if (themeRoll == 3)
			return(cbeRegionSouthAmerica());
		return(cbeRegionAsia());
	}
	else if (biomeTheme == cbeBiomeWetlandIsland())
	{
		themeRoll = rmRandInt(1, 4);
		if (themeRoll == 1)
			return(cbeRegionSouthAmerica());
		if (themeRoll == 2)
			return(cbeRegionNorthAmerica());
		if (themeRoll == 3)
			return(cbeRegionAsia());
		return(cbeRegionIsland());
	}

	themeRoll = rmRandInt(1, 3);
	if (themeRoll == 1)
		return(cbeRegionNorthAmerica());
	if (themeRoll == 2)
		return(cbeRegionEurope());
	return(cbeRegionAsia());
}

// Picks the main landform allowed by biome and region.
int cbeChooseGeographyLandform(int biomeTheme = 1, int regionFlavor = 1)
{
	int roll = rmRandInt(1, 100);

	if (biomeTheme == cbeBiomeCave())
	{
		if (roll <= 55)
			return(cbeGeoRiverBasin());
		return(cbeGeoCanyonlands());
	}
	else if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (roll <= 25)
			return(cbeGeoDelta());
		if (roll <= 45)
			return(cbeGeoHarbor());
		if (roll <= 65)
			return(cbeGeoPeninsula());
		if (roll <= 85)
			return(cbeGeoIslandCoast());
		return(cbeGeoRiverBasin());
	}
	else if (biomeTheme == cbeBiomeMountain() || biomeTheme == cbeBiomeColdNorth())
	{
		if (roll <= 25)
			return(cbeGeoHighlandValley());
		if (roll <= 45)
			return(cbeGeoFjord());
		if (roll <= 70)
			return(cbeGeoCanyonlands());
		if (roll <= 85)
			return(cbeGeoRiverBasin());
		return(cbeGeoInland());
	}
	else if (biomeTheme == cbeBiomeDesert())
	{
		if (roll <= 40)
			return(cbeGeoCanyonlands());
		if (roll <= 65)
			return(cbeGeoInland());
		if (roll <= 80)
			return(cbeGeoRiverBasin());
		if (roll <= 90)
			return(cbeGeoPeninsula());
		return(cbeGeoHarbor());
	}
	else if (biomeTheme == cbeBiomeJungle())
	{
		if (roll <= 30)
			return(cbeGeoRiverBasin());
		if (roll <= 50)
			return(cbeGeoDelta());
		if (roll <= 65)
			return(cbeGeoHarbor());
		if (roll <= 80)
			return(cbeGeoPeninsula());
		return(cbeGeoInland());
	}

	if (roll <= 25)
		return(cbeGeoInland());
	if (roll <= 45)
		return(cbeGeoRiverBasin());
	if (roll <= 60)
		return(cbeGeoHighlandValley());
	if (roll <= 75)
		return(cbeGeoHarbor());
	if (roll <= 88)
		return(cbeGeoPeninsula());
	return(cbeGeoCanyonlands());
}

// Picks a secondary landform modifier that can force or bias feature flags.
int cbeChooseGeographyModifier(int geographyLandform = 1, int biomeTheme = 1, int regionFlavor = 1)
{
	int roll = rmRandInt(1, 100);

	if (biomeTheme == cbeBiomeCave())
	{
		if (geographyLandform == cbeGeoRiverBasin())
		{
			if (roll <= 60)
				return(cbeGeoModRiverCutValley());
			return(cbeGeoModNone());
		}
		if (geographyLandform == cbeGeoCanyonlands())
		{
			if (roll <= 45)
				return(cbeGeoModRiverCutValley());
			if (roll <= 80)
				return(cbeGeoModBrokenHighlands());
			return(cbeGeoModNone());
		}
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoDelta())
	{
		if (roll <= 65)
			return(cbeGeoModMarshLowlands());
		if (roll <= 85)
			return(cbeGeoModShelteredBay());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoHarbor())
	{
		if (roll <= 45)
			return(cbeGeoModShelteredBay());
		if (roll <= 70)
			return(cbeGeoModCliffCoast());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoPeninsula())
	{
		if (roll <= 35)
			return(cbeGeoModCliffCoast());
		if (roll <= 60)
			return(cbeGeoModShelteredBay());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoFjord())
	{
		if (roll <= 70)
			return(cbeGeoModCliffCoast());
		return(cbeGeoModBrokenHighlands());
	}
	else if (geographyLandform == cbeGeoCanyonlands())
	{
		if (roll <= 45)
			return(cbeGeoModRiverCutValley());
		if (roll <= 75)
			return(cbeGeoModBrokenHighlands());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoHighlandValley())
	{
		if (roll <= 55)
			return(cbeGeoModRiverCutValley());
		if (roll <= 85)
			return(cbeGeoModBrokenHighlands());
		return(cbeGeoModNone());
	}
	else if (geographyLandform == cbeGeoRiverBasin())
	{
		if (roll <= 45)
			return(cbeGeoModRiverCutValley());
		if (roll <= 70)
			return(cbeGeoModMarshLowlands());
		return(cbeGeoModNone());
	}

	if (roll <= 20)
		return(cbeGeoModBrokenHighlands());
	return(cbeGeoModNone());
}

// ================================================================
// Feature Weights
// ================================================================

// Rolls whether major river features should be planned.
int cbeFeatureWeightRiver(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(70);

	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 20;
	if (geographyLandform == cbeGeoCanyonlands())
		weight = weight + 15;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHighlandValley())
		weight = weight + 10;
	return(weight);
}

// Rolls whether cliff/canyon edge features should be planned.
int cbeFeatureWeightCliffs(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(70);

	int weight = 40;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeMountain())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 10;
	if (geographyLandform == cbeGeoPeninsula())
		weight = weight + 10;
	else if (geographyLandform == cbeGeoHarbor())
		weight = weight + 10;
	return(weight);
}

// Rolls whether mountain/highland massing should be planned.
int cbeFeatureWeightMountains(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 30;
	if (biomeTheme == cbeBiomeMountain())
		weight = weight + 30;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 15;
	if (geographyLandform == cbeGeoCanyonlands())
		weight = weight + 10;
	return(weight);
}

// Rolls whether surface cave points should be planned.
int cbeFeatureWeightCaves(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 25;
	if (biomeTheme == cbeBiomeDesert())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeMountain())
		weight = weight + 15;
	return(weight);
}

// Rolls whether coast/water-edge features should be planned.
int cbeFeatureWeightCoast(int biomeTheme = 1, int geographyLandform = 1, int geographyModifier = 0)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 25;
	if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 35;
	if (geographyLandform == cbeGeoRiverBasin())
		weight = weight + 10;
	return(weight);
}

// Rolls whether dense forest/jungle/wild blockage should be planned.
int cbeFeatureWeightDenseWilds(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);

	int weight = 45;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 20;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 30;
	else if (biomeTheme == cbeBiomeDesert())
		weight = weight - 25;
	else if (biomeTheme == cbeBiomeWetlandIsland())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeColdNorth())
		weight = weight + 5;
	return(weight);
}

// Rolls whether ancient ruins or old-world remains should be planned.
int cbeFeatureWeightRuins(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(45);

	int weight = 35;
	if (biomeTheme == cbeBiomeForest())
		weight = weight + 10;
	else if (biomeTheme == cbeBiomeJungle())
		weight = weight + 15;
	return(weight);
}

// Converts a weight into a 0/1 feature flag.
int cbeRollFeatureEnabled(int weight = 0)
{
	if (rmRandInt(1, 100) <= weight)
		return(1);
	return(0);
}

// ================================================================
// Required Feature Flags
// ================================================================

// Forces river when the selected geography cannot make sense without one.
int cbeGeographyRequiresRiver(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoRiverBasin())
		return(1);
	if (geographyLandform == cbeGeoDelta())
		return(1);
	if (geographyModifier == cbeGeoModRiverCutValley())
		return(1);
	return(0);
}

// Forces coast when the selected geography cannot make sense without one.
int cbeGeographyRequiresCoast(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoDelta())
		return(1);
	if (geographyLandform == cbeGeoHarbor())
		return(1);
	if (geographyLandform == cbeGeoPeninsula())
		return(1);
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoIslandCoast())
		return(1);
	if (geographyModifier == cbeGeoModCliffCoast())
		return(1);
	if (geographyModifier == cbeGeoModShelteredBay())
		return(1);
	return(0);
}

// Forces cliffs when the selected geography cannot make sense without them.
int cbeGeographyRequiresCliffs(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoCanyonlands())
		return(1);
	if (geographyLandform == cbeGeoHighlandValley())
		return(1);
	if (geographyModifier == cbeGeoModCliffCoast())
		return(1);
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return(1);
	return(0);
}

// Forces mountains when the selected geography cannot make sense without them.
int cbeGeographyRequiresMountains(int geographyLandform = 1, int geographyModifier = 0)
{
	if (geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoHighlandValley())
		return(1);
	if (geographyModifier == cbeGeoModBrokenHighlands())
		return(1);
	return(0);
}

// ================================================================
// Water Relationship Values
// ================================================================

// Determines whether generated rivers and coasts form one connected water system.
int cbeShouldConnectWaterBodies(
	int geographyLandform = 1, int geographyModifier = 0,
	int hasRiver = 0, int hasCoast = 0, int connectionRoll = 100)
{
	int connectionWeight = 35;

	if (hasRiver == 0 || hasCoast == 0)
		return(0);
	if (geographyLandform == cbeGeoDelta() || geographyLandform == cbeGeoFjord())
		return(1);
	if (geographyLandform == cbeGeoHarbor())
		connectionWeight = 70;
	else if (geographyLandform == cbeGeoRiverBasin())
		connectionWeight = 60;
	else if (geographyLandform == cbeGeoPeninsula())
		connectionWeight = 50;
	else if (geographyLandform == cbeGeoIslandCoast())
		connectionWeight = 40;

	if (geographyModifier == cbeGeoModRiverCutValley())
		connectionWeight = connectionWeight + 20;
	if (geographyModifier == cbeGeoModShelteredBay())
		connectionWeight = connectionWeight + 15;

	if (connectionRoll <= connectionWeight)
		return(1);
	return(0);
}

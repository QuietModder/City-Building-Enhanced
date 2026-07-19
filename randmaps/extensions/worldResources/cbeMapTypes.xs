// CBE Map Types

string cbeGetPrimaryMapType(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int selectionRoll = 0)
{
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 7);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 4);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 7);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 4);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);

	if (biomeTheme == cbeBiomeCave())
		return("land");
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("newEngland");
			if (forestEuropeRoll == 2)
				return("centralEurope");
			if (forestEuropeRoll == 3)
				return("eastEurope");
			if (forestEuropeRoll == 4)
				return("westEurope");
			if (forestEuropeRoll == 5)
				return("northeastEurope");
			if (forestEuropeRoll == 6)
				return("northEurope");
			if (forestEuropeRoll == 7)
				return("mediEurope");
			if (forestEuropeRoll == 8)
				return("italy");
			return("lostEU");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("Japan");
			if (forestAsiaRoll == 2)
				return("burma");
			if (forestAsiaRoll == 3)
				return("Ceylon");
			if (forestAsiaRoll == 4)
				return("ceylon");
			if (forestAsiaRoll == 5)
				return("yellowRiver");
			if (forestAsiaRoll == 6)
				return("YellowRiver");
			if (forestAsiaRoll == 7)
				return("mongolia_grass");
			return("punjab");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("carolina");
			if (forestNorthAmericaRoll == 2)
				return("newEngland");
			if (forestNorthAmericaRoll == 3)
				return("greatlakes");
			if (forestNorthAmericaRoll == 4)
				return("saguenay");
			if (forestNorthAmericaRoll == 5)
				return("Saguenay");
			if (forestNorthAmericaRoll == 6)
				return("plymouth");
			if (forestNorthAmericaRoll == 7)
				return("california");
			return("California");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("madagascar");
			if (jungleAfricaRoll == 2)
				return("PepperCoast");
			if (jungleAfricaRoll == 3)
				return("Horn");
			if (jungleAfricaRoll == 4)
				return("GreatRift");
			return("Savanna");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo");
			if (jungleAsiaRoll == 2)
				return("burma");
			if (jungleAsiaRoll == 3)
				return("Ceylon");
			if (jungleAsiaRoll == 4)
				return("ceylon");
			if (jungleAsiaRoll == 5)
				return("deccan");
			if (jungleAsiaRoll == 6)
				return("newguinea");
			if (jungleAsiaRoll == 7)
				return("punjab");
			return("tropical");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("orinoco");
			if (jungleSouthAmericaRoll == 2)
				return("amazonia");
			if (jungleSouthAmericaRoll == 3)
				return("yucatan");
			if (jungleSouthAmericaRoll == 4)
				return("eldorado");
			return("tropical");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("sahara");
			if (desertAfricaRoll == 2)
				return("Sahara");
			if (desertAfricaRoll == 3)
				return("NileRiver");
			if (desertAfricaRoll == 4)
				return("Horn");
			if (desertAfricaRoll == 5)
				return("GreatRift");
			return("desert");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("silkRoad1");
			if (desertAsiaRoll == 2)
				return("silkRoad2");
			if (desertAsiaRoll == 3)
				return("silkRoad3");
			if (desertAsiaRoll == 4)
				return("himalayas");
			if (desertAsiaRoll == 5)
				return("punjab");
			return("desert");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("sonora");
			if (desertNorthAmericaRoll == 2)
				return("texas");
			if (desertNorthAmericaRoll == 3)
				return("california");
			if (desertNorthAmericaRoll == 4)
				return("California");
			return("desert");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("Savanna");
			if (plainsAfricaRoll == 2)
				return("GreatRift");
			if (plainsAfricaRoll == 3)
				return("Horn");
			if (plainsAfricaRoll == 4)
				return("madagascar");
			return("sahara");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("yellowRiver");
			if (plainsAsiaRoll == 2)
				return("YellowRiver");
			if (plainsAsiaRoll == 3)
				return("mongolia");
			if (plainsAsiaRoll == 4)
				return("mongolia_grass");
			if (plainsAsiaRoll == 5)
				return("punjab");
			if (plainsAsiaRoll == 6)
				return("silkRoad1");
			return("silkRoad2");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("lostEU");
			if (plainsEuropeRoll == 2)
				return("centralEurope");
			if (plainsEuropeRoll == 3)
				return("eastEurope");
			if (plainsEuropeRoll == 4)
				return("westEurope");
			if (plainsEuropeRoll == 5)
				return("mediEurope");
			if (plainsEuropeRoll == 6)
				return("italy");
			if (plainsEuropeRoll == 7)
				return("northEurope");
			if (plainsEuropeRoll == 8)
				return("northeastEurope");
			return("Grass");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("greatPlains");
			if (plainsNorthAmericaRoll == 2)
				return("dakota");
			if (plainsNorthAmericaRoll == 3)
				return("colorado");
			if (plainsNorthAmericaRoll == 4)
				return("texas");
			if (plainsNorthAmericaRoll == 5)
				return("mexico");
			if (plainsNorthAmericaRoll == 6)
				return("california");
			if (plainsNorthAmericaRoll == 7)
				return("California");
			if (plainsNorthAmericaRoll == 8)
				return("grass");
			return("Grass");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("andes");
			if (mountainSouthAmericaRoll == 2)
				return("araucania");
			if (mountainSouthAmericaRoll == 3)
				return("patagonia");
			return("pampas");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("himalayas");
			if (mountainAsiaRoll == 2)
				return("kamchatka");
			if (mountainAsiaRoll == 3)
				return("mongolia");
			if (mountainAsiaRoll == 4)
				return("mongolia_grass");
			if (mountainAsiaRoll == 5)
				return("silkRoad1");
			if (mountainAsiaRoll == 6)
				return("silkRoad2");
			return("silkRoad3");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("lostEU");
			if (mountainEuropeRoll == 2)
				return("centralEurope");
			if (mountainEuropeRoll == 3)
				return("eastEurope");
			if (mountainEuropeRoll == 4)
				return("northeastEurope");
			if (mountainEuropeRoll == 5)
				return("northEurope");
			if (mountainEuropeRoll == 6)
				return("Iceland");
			if (mountainEuropeRoll == 7)
				return("rockies");
			return("snow");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("rockies");
			if (mountainNorthAmericaRoll == 2)
				return("colorado");
			if (mountainNorthAmericaRoll == 3)
				return("northwestTerritory");
			if (mountainNorthAmericaRoll == 4)
				return("saguenay");
			if (mountainNorthAmericaRoll == 5)
				return("Saguenay");
			if (mountainNorthAmericaRoll == 6)
				return("yukon");
			if (mountainNorthAmericaRoll == 7)
				return("california");
			if (mountainNorthAmericaRoll == 8)
				return("California");
			return("snow");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("amazonia");
			if (wetlandSouthAmericaRoll == 2)
				return("orinoco");
			if (wetlandSouthAmericaRoll == 3)
				return("yucatan");
			if (wetlandSouthAmericaRoll == 4)
				return("eldorado");
			return("caribbean");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("deccan");
			if (wetlandAsiaRoll == 2)
				return("borneo");
			if (wetlandAsiaRoll == 3)
				return("Ceylon");
			if (wetlandAsiaRoll == 4)
				return("ceylon");
			if (wetlandAsiaRoll == 5)
				return("newguinea");
			if (wetlandAsiaRoll == 6)
				return("burma");
			if (wetlandAsiaRoll == 7)
				return("punjab");
			return("tropical");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean");
			if (wetlandIslandRoll == 2)
				return("caribbeanwater");
			if (wetlandIslandRoll == 3)
				return("barrierreef");
			if (wetlandIslandRoll == 4)
				return("cookislands");
			if (wetlandIslandRoll == 5)
				return("hawaii");
			if (wetlandIslandRoll == 6)
				return("kurils");
			if (wetlandIslandRoll == 7)
				return("melanesia");
			if (wetlandIslandRoll == 8)
				return("newguinea");
			if (wetlandIslandRoll == 9)
				return("newzealand");
			if (wetlandIslandRoll == 10)
				return("tasmania");
			if (wetlandIslandRoll == 11)
				return("australia");
			return("water");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("Iceland");
			if (coldEuropeRoll == 2)
				return("northEurope");
			if (coldEuropeRoll == 3)
				return("northeastEurope");
			if (coldEuropeRoll == 4)
				return("ArcticTerritories");
			if (coldEuropeRoll == 5)
				return("ScenarioFreezing");
			return("snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("siberia");
			if (coldAsiaRoll == 2)
				return("kamchatka");
			if (coldAsiaRoll == 3)
				return("ArcticTerritories");
			return("snow");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("yukon");
			if (coldNorthAmericaRoll == 2)
				return("northwestTerritory");
			if (coldNorthAmericaRoll == 3)
				return("saguenay");
			if (coldNorthAmericaRoll == 4)
				return("Saguenay");
			if (coldNorthAmericaRoll == 5)
				return("greatlakes");
			if (coldNorthAmericaRoll == 6)
				return("ArcticTerritories");
			if (coldNorthAmericaRoll == 7)
				return("ScenarioFreezing");
			return("snow");
		}
	}
	return("carolina");
}

string cbeGetSecondaryMapType(int biomeTheme = 1, int selectionRoll = 0)
{
	int secondaryRoll = cbeResolveWorldResourceRoll(selectionRoll, 3);

	if (biomeTheme == cbeBiomeJungle())
	{
		if (secondaryRoll == 1)
			return("tropical");
		if (secondaryRoll == 2)
			return("grass");
		return("Grass");
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (secondaryRoll == 1)
			return("desert");
		if (secondaryRoll == 2)
			return("land");
		return("Land");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (secondaryRoll == 1)
			return("snow");
		if (secondaryRoll == 2)
			return("ScenarioFreezing");
		return("land");
	}
	if (secondaryRoll == 1)
		return("grass");
	if (secondaryRoll == 2)
		return("Grass");
	return("land");
}


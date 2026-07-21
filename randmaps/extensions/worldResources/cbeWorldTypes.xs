// CBE World Types

// ================================================================
// Water Types
// ================================================================

string cbeGetSeaType(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int selectionRoll = 0)
{
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 5);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 7);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);

	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("africa rainforest coast");
			if (jungleAfricaRoll == 2)
				return("africa rainforest swamp");
			if (jungleAfricaRoll == 3)
				return("Africa Savanna Coast");
			if (jungleAfricaRoll == 4)
				return("africa savanna coast");
			return("africa east lake");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("Borneo Coast");
			if (jungleAsiaRoll == 2)
				return("borneo coast");
			if (jungleAsiaRoll == 3)
				return("borneo water");
			if (jungleAsiaRoll == 4)
				return("Borneo Water");
			if (jungleAsiaRoll == 5)
				return("zp borneo lake");
			if (jungleAsiaRoll == 6)
				return("indochina coast");
			if (jungleAsiaRoll == 7)
				return("indochina Water");
			if (jungleAsiaRoll == 8)
				return("Indochina Water");
			if (jungleAsiaRoll == 9)
				return("Malaysia Water");
			if (jungleAsiaRoll == 10)
				return("ceylon coast");
			if (jungleAsiaRoll == 11)
				return("Ceylon Coast");
			if (jungleAsiaRoll == 12)
				return("Bengal_Marsh");
			if (jungleAsiaRoll == 13)
				return("ZP New Guinea");
			return("ZP Melanesia");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("Amazon River");
			if (jungleSouthAmericaRoll == 2)
				return("Amazon River Basin");
			if (jungleSouthAmericaRoll == 3)
				return("Amazon River Basin RM");
			if (jungleSouthAmericaRoll == 4)
				return("Amazon Rainforest River Muddy");
			if (jungleSouthAmericaRoll == 5)
				return("Orinoco River");
			if (jungleSouthAmericaRoll == 6)
				return("yucatan Coast");
			if (jungleSouthAmericaRoll == 7)
				return("Yucatan Coast Alt");
			if (jungleSouthAmericaRoll == 8)
				return("ZP Aztec Lake");
			if (jungleSouthAmericaRoll == 9)
				return("ZP Mexico River");
			if (jungleSouthAmericaRoll == 10)
				return("ZP Mississippi River");
			return("ZP Riverina Waterfalls");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("Africa Desert Beach");
			if (desertAfricaRoll == 2)
				return("africa desert coast");
			if (desertAfricaRoll == 3)
				return("africa east lake");
			if (desertAfricaRoll == 4)
				return("Africa Savanna Coast");
			if (desertAfricaRoll == 5)
				return("africa savanna coast");
			return("africa rainforest swamp");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("Deccan Light");
			if (desertAsiaRoll == 2)
				return("deccan plateau river");
			if (desertAsiaRoll == 3)
				return("Deccan Plateau River");
			if (desertAsiaRoll == 4)
				return("Punjab River");
			if (desertAsiaRoll == 5)
				return("Manchuria Inland");
			if (desertAsiaRoll == 6)
				return("Manchuria Coast");
			if (desertAsiaRoll == 7)
				return("Bengal_Marsh");
			if (desertAsiaRoll == 8)
				return("ZP Dead Sea");
			if (desertAsiaRoll == 9)
				return("ZP Dead Sea Shallow");
			return("Yellow River Wet Sans Fog");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("California Coast");
			if (desertNorthAmericaRoll == 2)
				return("california coast");
			if (desertNorthAmericaRoll == 3)
				return("Texas Coast");
			if (desertNorthAmericaRoll == 4)
				return("Texas Pond");
			if (desertNorthAmericaRoll == 5)
				return("texas pond");
			if (desertNorthAmericaRoll == 6)
				return("texas pond rm");
			if (desertNorthAmericaRoll == 7)
				return("Painted Desert Coast");
			if (desertNorthAmericaRoll == 8)
				return("Painted Desert River");
			if (desertNorthAmericaRoll == 9)
				return("Sonora Coast");
			if (desertNorthAmericaRoll == 10)
				return("ZP Mexico River");
			return("ZP Aztec Lake");
		}
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("atlantic coast");
			if (forestEuropeRoll == 2)
				return("Atlantic Coast");
			if (forestEuropeRoll == 3)
				return("Amsterdam");
			if (forestEuropeRoll == 4)
				return("Danish Coast");
			if (forestEuropeRoll == 5)
				return("Italian Coast");
			if (forestEuropeRoll == 6)
				return("Italian River");
			if (forestEuropeRoll == 7)
				return("Lithuania Lake");
			if (forestEuropeRoll == 8)
				return("ZP Danube River");
			if (forestEuropeRoll == 9)
				return("ZP Bohemian River");
			if (forestEuropeRoll == 10)
				return("ZP Paris River");
			if (forestEuropeRoll == 11)
				return("ZP Arno River Pond");
			if (forestEuropeRoll == 12)
				return("ZP Hansa Baltic Lake");
			if (forestEuropeRoll == 13)
				return("ZP Hansa Baltic Ocean");
			if (forestEuropeRoll == 14)
				return("ZP Adralic coast");
			if (forestEuropeRoll == 15)
				return("ZP Venice Lagoon");
			return("ZP Venice Lagoon Shore");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("Coastal Honshu");
			if (forestAsiaRoll == 2)
				return("Coastal Japan");
			if (forestAsiaRoll == 3)
				return("Manchuria Coast");
			if (forestAsiaRoll == 4)
				return("Manchuria Inland");
			if (forestAsiaRoll == 5)
				return("Kamchatka Water");
			if (forestAsiaRoll == 6)
				return("Yellow River Wet Sans Fog");
			if (forestAsiaRoll == 7)
				return("Punjab River");
			if (forestAsiaRoll == 8)
				return("Ceylon Coast");
			if (forestAsiaRoll == 9)
				return("ceylon coast");
			return("indochina Water");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("Great Lakes");
			if (forestNorthAmericaRoll == 2)
				return("great lakes");
			if (forestNorthAmericaRoll == 3)
				return("Great Lakes2");
			if (forestNorthAmericaRoll == 4)
				return("great lakes2");
			if (forestNorthAmericaRoll == 5)
				return("great plains pond");
			if (forestNorthAmericaRoll == 6)
				return("carolinas coast");
			if (forestNorthAmericaRoll == 7)
				return("New England Coast");
			if (forestNorthAmericaRoll == 8)
				return("new england coast");
			if (forestNorthAmericaRoll == 9)
				return("new england lake");
			if (forestNorthAmericaRoll == 10)
				return("new england Skirmish");
			if (forestNorthAmericaRoll == 11)
				return("New England Skirmish");
			if (forestNorthAmericaRoll == 12)
				return("hudson bay");
			if (forestNorthAmericaRoll == 13)
				return("Hudson Bay");
			return("Parallel Rivers River");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("Africa Savanna Coast");
			if (plainsAfricaRoll == 2)
				return("africa savanna coast");
			if (plainsAfricaRoll == 3)
				return("africa east lake");
			if (plainsAfricaRoll == 4)
				return("Africa Desert Beach");
			if (plainsAfricaRoll == 5)
				return("africa desert coast");
			return("africa rainforest coast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("Yellow River Wet Sans Fog");
			if (plainsAsiaRoll == 2)
				return("Punjab River");
			if (plainsAsiaRoll == 3)
				return("Manchuria Inland");
			if (plainsAsiaRoll == 4)
				return("Manchuria Coast");
			if (plainsAsiaRoll == 5)
				return("Deccan Plateau River");
			if (plainsAsiaRoll == 6)
				return("deccan plateau river");
			if (plainsAsiaRoll == 7)
				return("Deccan Light");
			if (plainsAsiaRoll == 8)
				return("Coastal Honshu");
			return("Coastal Japan");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("atlantic coast");
			if (plainsEuropeRoll == 2)
				return("Atlantic Coast");
			if (plainsEuropeRoll == 3)
				return("Amsterdam");
			if (plainsEuropeRoll == 4)
				return("Danish Coast");
			if (plainsEuropeRoll == 5)
				return("Italian Coast");
			if (plainsEuropeRoll == 6)
				return("Italian River");
			if (plainsEuropeRoll == 7)
				return("Lithuania Lake");
			if (plainsEuropeRoll == 8)
				return("ZP Danube River");
			if (plainsEuropeRoll == 9)
				return("ZP Bohemian River");
			if (plainsEuropeRoll == 10)
				return("ZP Paris River");
			if (plainsEuropeRoll == 11)
				return("ZP Arno River Pond");
			if (plainsEuropeRoll == 12)
				return("ZP Hansa Baltic Lake");
			if (plainsEuropeRoll == 13)
				return("ZP Hansa Baltic Ocean");
			return("ZP Verseilles Pond");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("great plains pond");
			if (plainsNorthAmericaRoll == 2)
				return("Texas Pond");
			if (plainsNorthAmericaRoll == 3)
				return("texas pond");
			if (plainsNorthAmericaRoll == 4)
				return("texas pond rm");
			if (plainsNorthAmericaRoll == 5)
				return("Texas Coast");
			if (plainsNorthAmericaRoll == 6)
				return("Great Lakes");
			if (plainsNorthAmericaRoll == 7)
				return("great lakes");
			if (plainsNorthAmericaRoll == 8)
				return("Great Lakes2");
			if (plainsNorthAmericaRoll == 9)
				return("great lakes2");
			if (plainsNorthAmericaRoll == 10)
				return("Parallel Rivers River");
			return("ZP Mississippi River");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("Andes River");
			if (mountainSouthAmericaRoll == 2)
				return("pampas river");
			if (mountainSouthAmericaRoll == 3)
				return("Pampas River");
			if (mountainSouthAmericaRoll == 4)
				return("Pampas River RM");
			if (mountainSouthAmericaRoll == 5)
				return("Araucania Southern Coast");
			if (mountainSouthAmericaRoll == 6)
				return("araucania southern Coast");
			if (mountainSouthAmericaRoll == 7)
				return("Araucania Central Coast");
			if (mountainSouthAmericaRoll == 8)
				return("Araucania North Coast");
			if (mountainSouthAmericaRoll == 9)
				return("Patagonia bay");
			return("Patagonia lake");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("Kamchatka Water");
			if (mountainAsiaRoll == 2)
				return("Manchuria Coast");
			if (mountainAsiaRoll == 3)
				return("Manchuria Inland");
			if (mountainAsiaRoll == 4)
				return("Coastal Honshu");
			if (mountainAsiaRoll == 5)
				return("Coastal Japan");
			if (mountainAsiaRoll == 6)
				return("Punjab River");
			if (mountainAsiaRoll == 7)
				return("Yellow River Wet Sans Fog");
			if (mountainAsiaRoll == 8)
				return("Deccan Plateau River");
			if (mountainAsiaRoll == 9)
				return("deccan plateau river");
			if (mountainAsiaRoll == 10)
				return("ZP Bering Strait");
			return("ZP Kuril Islands");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("Baltic Sea");
			if (mountainEuropeRoll == 2)
				return("Lithuania Lake");
			if (mountainEuropeRoll == 3)
				return("Italian River");
			if (mountainEuropeRoll == 4)
				return("ZP Danube River");
			if (mountainEuropeRoll == 5)
				return("ZP Bohemian River");
			if (mountainEuropeRoll == 6)
				return("ZP Paris River");
			if (mountainEuropeRoll == 7)
				return("ZP Arno River Pond");
			if (mountainEuropeRoll == 8)
				return("ZP Hansa Baltic Lake");
			if (mountainEuropeRoll == 9)
				return("ZP Hansa Baltic Ocean");
			if (mountainEuropeRoll == 10)
				return("ZP Iceland Lake");
			if (mountainEuropeRoll == 11)
				return("ZP Iceland Transparent");
			return("ZP Iceland Transparent 2");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("Yukon River");
			if (mountainNorthAmericaRoll == 2)
				return("yukon river");
			if (mountainNorthAmericaRoll == 3)
				return("Yukon River4");
			if (mountainNorthAmericaRoll == 4)
				return("NW Territory River");
			if (mountainNorthAmericaRoll == 5)
				return("Northwest Territory Water");
			if (mountainNorthAmericaRoll == 6)
				return("Rockies Lake");
			if (mountainNorthAmericaRoll == 7)
				return("Rockies Lake Ice");
			if (mountainNorthAmericaRoll == 8)
				return("rockies lake ice");
			if (mountainNorthAmericaRoll == 9)
				return("saguenay lake");
			if (mountainNorthAmericaRoll == 10)
				return("Alaskan Coast");
			if (mountainNorthAmericaRoll == 11)
				return("ZP Labrador Coast");
			return("ZP Bering Strait");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazon River");
			if (wetlandSouthAmericaRoll == 2)
				return("Amazon River Basin");
			if (wetlandSouthAmericaRoll == 3)
				return("Amazon River Basin RM");
			if (wetlandSouthAmericaRoll == 4)
				return("Amazon Rainforest River Muddy");
			if (wetlandSouthAmericaRoll == 5)
				return("Orinoco River");
			if (wetlandSouthAmericaRoll == 6)
				return("yucatan Coast");
			if (wetlandSouthAmericaRoll == 7)
				return("Yucatan Coast Alt");
			return("caribbean coast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("Bengal_Marsh");
			if (wetlandAsiaRoll == 2)
				return("Borneo Coast");
			if (wetlandAsiaRoll == 3)
				return("borneo coast");
			if (wetlandAsiaRoll == 4)
				return("borneo water");
			if (wetlandAsiaRoll == 5)
				return("Borneo Water");
			if (wetlandAsiaRoll == 6)
				return("zp borneo lake");
			if (wetlandAsiaRoll == 7)
				return("ceylon coast");
			if (wetlandAsiaRoll == 8)
				return("Ceylon Coast");
			if (wetlandAsiaRoll == 9)
				return("indochina coast");
			if (wetlandAsiaRoll == 10)
				return("indochina Water");
			if (wetlandAsiaRoll == 11)
				return("Indochina Water");
			if (wetlandAsiaRoll == 12)
				return("Malaysia Water");
			if (wetlandAsiaRoll == 13)
				return("ZP New Guinea");
			if (wetlandAsiaRoll == 14)
				return("ZP Melanesia");
			return("ZP Torres Strait");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean coast");
			if (wetlandIslandRoll == 2)
				return("ZP Venice Lagoon");
			if (wetlandIslandRoll == 3)
				return("ZP Venice Lagoon Shore");
			if (wetlandIslandRoll == 4)
				return("ZP Hawaii Coast");
			if (wetlandIslandRoll == 5)
				return("ZP Great Barrier Reef");
			if (wetlandIslandRoll == 6)
				return("ZP Great Barrier Reef 2");
			if (wetlandIslandRoll == 7)
				return("ZP Great Barrier Reef 3");
			if (wetlandIslandRoll == 8)
				return("ZP Great Barrier Reef 4");
			if (wetlandIslandRoll == 9)
				return("ZP Polynesian Coast");
			if (wetlandIslandRoll == 10)
				return("ZP Torres Strait");
			if (wetlandIslandRoll == 11)
				return("ZP Pacific Coast");
			if (wetlandIslandRoll == 12)
				return("ZP New Guinea");
			if (wetlandIslandRoll == 13)
				return("ZP Melanesia");
			if (wetlandIslandRoll == 14)
				return("zp new zealand coast");
			if (wetlandIslandRoll == 15)
				return("ZP Cook Islands");
			if (wetlandIslandRoll == 16)
				return("ZP Cook Islands 2");
			if (wetlandIslandRoll == 17)
				return("ZP Cook Islands 3");
			return("ZP Cook Islands 4");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("Baltic Sea");
			if (coldEuropeRoll == 2)
				return("Lithuania Lake");
			if (coldEuropeRoll == 3)
				return("Great Lakes Ice");
			if (coldEuropeRoll == 4)
				return("great lakes ice");
			if (coldEuropeRoll == 5)
				return("Great Lakes Ice2");
			if (coldEuropeRoll == 6)
				return("great lakes ice3");
			if (coldEuropeRoll == 7)
				return("ZP Iceland Lake");
			if (coldEuropeRoll == 8)
				return("ZP Iceland Transparent");
			if (coldEuropeRoll == 9)
				return("ZP Iceland Transparent 2");
			return("ZP Iceland Transparent 3");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("Kamchatka Water");
			if (coldAsiaRoll == 2)
				return("ZP Bering Strait");
			if (coldAsiaRoll == 3)
				return("ZP Kuril Islands");
			if (coldAsiaRoll == 4)
				return("Manchuria Coast");
			if (coldAsiaRoll == 5)
				return("Manchuria Inland");
			if (coldAsiaRoll == 6)
				return("Coastal Honshu");
			return("Coastal Japan");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("Yukon River");
			if (coldNorthAmericaRoll == 2)
				return("yukon river");
			if (coldNorthAmericaRoll == 3)
				return("Yukon River4");
			if (coldNorthAmericaRoll == 4)
				return("Alaskan Coast");
			if (coldNorthAmericaRoll == 5)
				return("Great Lakes Ice");
			if (coldNorthAmericaRoll == 6)
				return("great lakes ice");
			if (coldNorthAmericaRoll == 7)
				return("Great Lakes Ice2");
			if (coldNorthAmericaRoll == 8)
				return("great lakes ice3");
			if (coldNorthAmericaRoll == 9)
				return("NW Territory River");
			if (coldNorthAmericaRoll == 10)
				return("Northwest Territory Water");
			if (coldNorthAmericaRoll == 11)
				return("ZP Labrador Coast");
			if (coldNorthAmericaRoll == 12)
				return("ZP Bering Strait");
			return("hudson bay");
		}
	}
	return("great lakes");
}

// ================================================================
// Terrain Mixes
// ================================================================

string cbeGetBaseTerrainMix(int biomeTheme = 1, int regionFlavor = 1, int geographyLandform = 1, int selectionRoll = 0)
{
	int caveRoll = cbeResolveWorldResourceRoll(selectionRoll, 2);
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 4);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 20);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("caves2");
		return("great plains drygrass");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("newengland_grass");
			if (forestEuropeRoll == 2)
				return("NewEngland_grass");
			if (forestEuropeRoll == 3)
				return("newengland_rock");
			if (forestEuropeRoll == 4)
				return("danish_grass1");
			if (forestEuropeRoll == 5)
				return("danish_grass2");
			if (forestEuropeRoll == 6)
				return("danish_grass3");
			if (forestEuropeRoll == 7)
				return("italy_grass");
			if (forestEuropeRoll == 8)
				return("italy_grass_lush");
			if (forestEuropeRoll == 9)
				return("italy_grass_medium");
			if (forestEuropeRoll == 10)
				return("italy_grass_dirt");
			if (forestEuropeRoll == 11)
				return("italy_north_grass");
			if (forestEuropeRoll == 12)
				return("italy_north_dirt");
			if (forestEuropeRoll == 13)
				return("italy_path");
			if (forestEuropeRoll == 14)
				return("geometricpatterngrass");
			return("Flowers_Purple");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("coastal_honshu_b");
			if (forestAsiaRoll == 2)
				return("coastal_japan_a");
			if (forestAsiaRoll == 3)
				return("coastal_japan_b");
			if (forestAsiaRoll == 4)
				return("coastal_japan_c");
			if (forestAsiaRoll == 5)
				return("yellow_river_a");
			if (forestAsiaRoll == 6)
				return("yellow_river_b");
			if (forestAsiaRoll == 7)
				return("yellow_river_c");
			if (forestAsiaRoll == 8)
				return("yellow_river_forest");
			if (forestAsiaRoll == 9)
				return("Yellow_River_A");
			if (forestAsiaRoll == 10)
				return("mongolia_forest");
			if (forestAsiaRoll == 11)
				return("mongolia_grass");
			if (forestAsiaRoll == 12)
				return("mongolia_grass_a");
			if (forestAsiaRoll == 13)
				return("mongolia_grass_b");
			if (forestAsiaRoll == 14)
				return("deccan_grass_a");
			if (forestAsiaRoll == 15)
				return("Deccan_grass_a");
			if (forestAsiaRoll == 16)
				return("Deccan_Grass_A");
			if (forestAsiaRoll == 17)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("carolina grass");
			if (forestNorthAmericaRoll == 2)
				return("carolina_dirt");
			if (forestNorthAmericaRoll == 3)
				return("carolina_forest");
			if (forestNorthAmericaRoll == 4)
				return("carolina_grass");
			if (forestNorthAmericaRoll == 5)
				return("carolina_grass_dry");
			if (forestNorthAmericaRoll == 6)
				return("carolina_grassier");
			if (forestNorthAmericaRoll == 7)
				return("greatlakes_grass");
			if (forestNorthAmericaRoll == 8)
				return("great plains forest");
			if (forestNorthAmericaRoll == 9)
				return("Great Plains Forest");
			if (forestNorthAmericaRoll == 10)
				return("great plains grass");
			if (forestNorthAmericaRoll == 11)
				return("Great Plains grass");
			if (forestNorthAmericaRoll == 12)
				return("california_grass");
			if (forestNorthAmericaRoll == 13)
				return("california_grassrocks");
			if (forestNorthAmericaRoll == 14)
				return("california_madrone_forest");
			if (forestNorthAmericaRoll == 15)
				return("plymouth_grass");
			return("saguenay grass");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("africa rainforest grass");
			if (jungleAfricaRoll == 2)
				return("africa rainforest grass dry");
			if (jungleAfricaRoll == 3)
				return("africa rainforest grass medium");
			return("africa savanna forest");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo_grass_a");
			if (jungleAsiaRoll == 2)
				return("borneo_grass_b");
			if (jungleAsiaRoll == 3)
				return("borneo_sand_a");
			if (jungleAsiaRoll == 4)
				return("borneo_underbrush");
			if (jungleAsiaRoll == 5)
				return("indochina_grass_a");
			if (jungleAsiaRoll == 6)
				return("indochina_underbrush");
			if (jungleAsiaRoll == 7)
				return("ceylon_grass_a");
			if (jungleAsiaRoll == 8)
				return("ceylon_sand_a");
			if (jungleAsiaRoll == 9)
				return("deccan_grass_a");
			if (jungleAsiaRoll == 10)
				return("Deccan_grass_a");
			if (jungleAsiaRoll == 11)
				return("Deccan_Grass_A");
			if (jungleAsiaRoll == 12)
				return("deccan_grass_b");
			if (jungleAsiaRoll == 13)
				return("Deccan_Grass_B");
			if (jungleAsiaRoll == 14)
				return("deccan_grassy_dirt_a");
			if (jungleAsiaRoll == 15)
				return("deccan_grassy_Dirt_a");
			return("deccan_grassy_dirt_a_noprops");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("Amazon Dirt");
			if (jungleSouthAmericaRoll == 2)
				return("Amazon Grass");
			if (jungleSouthAmericaRoll == 3)
				return("amazon grass");
			if (jungleSouthAmericaRoll == 4)
				return("amazon grass dirt");
			if (jungleSouthAmericaRoll == 5)
				return("Amazon Grass Dirt");
			if (jungleSouthAmericaRoll == 6)
				return("amazon grass medium");
			if (jungleSouthAmericaRoll == 7)
				return("Amazon Grass Medium");
			if (jungleSouthAmericaRoll == 8)
				return("orinoco grass");
			if (jungleSouthAmericaRoll == 9)
				return("yucatan_grass");
			if (jungleSouthAmericaRoll == 10)
				return("bayou_grass");
			return("bayou_forest");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("africa desert dirt");
			if (desertAfricaRoll == 2)
				return("africa desert grass");
			if (desertAfricaRoll == 3)
				return("Africa Desert Grass");
			if (desertAfricaRoll == 4)
				return("africa desert grass dry");
			if (desertAfricaRoll == 5)
				return("Africa Desert Grass dry");
			if (desertAfricaRoll == 6)
				return("africa desert grass medium");
			if (desertAfricaRoll == 7)
				return("Africa Desert Grass Medium");
			if (desertAfricaRoll == 8)
				return("africa desert grass mud blend");
			if (desertAfricaRoll == 9)
				return("Africa desert rock");
			if (desertAfricaRoll == 10)
				return("africa desert rock");
			if (desertAfricaRoll == 11)
				return("africa desert sand");
			if (desertAfricaRoll == 12)
				return("africa east dirt");
			if (desertAfricaRoll == 13)
				return("africa east grass");
			if (desertAfricaRoll == 14)
				return("africa east grass dry");
			if (desertAfricaRoll == 15)
				return("scorched_ground");
			return("scorched01");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("himalayas_a");
			if (desertAsiaRoll == 2)
				return("himalayas_b");
			if (desertAsiaRoll == 3)
				return("himalayas_c");
			if (desertAsiaRoll == 4)
				return("deccan_dirt_a");
			if (desertAsiaRoll == 5)
				return("deccan_grassy_dirt_a");
			if (desertAsiaRoll == 6)
				return("deccan_grassy_Dirt_a");
			if (desertAsiaRoll == 7)
				return("deccan_grassy_dirt_a_noprops");
			if (desertAsiaRoll == 8)
				return("mongolia_desert");
			if (desertAsiaRoll == 9)
				return("mongolia_grass");
			if (desertAsiaRoll == 10)
				return("mongolia_grass_a");
			if (desertAsiaRoll == 11)
				return("mongolia_grass_b");
			if (desertAsiaRoll == 12)
				return("desertforestflr_cal");
			if (desertAsiaRoll == 13)
				return("grandcanyon_rock_7");
			return("grandcanyon_frstflr");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("sonora_dirt");
			if (desertNorthAmericaRoll == 2)
				return("california desert");
			if (desertNorthAmericaRoll == 3)
				return("california_desert");
			if (desertNorthAmericaRoll == 4)
				return("california_desert0");
			if (desertNorthAmericaRoll == 5)
				return("california_desert2");
			if (desertNorthAmericaRoll == 6)
				return("california_desert3");
			if (desertNorthAmericaRoll == 7)
				return("desertforestflr_cal");
			if (desertNorthAmericaRoll == 8)
				return("painteddesert_groundmix_1");
			if (desertNorthAmericaRoll == 9)
				return("painteddesert_groundmix_2");
			if (desertNorthAmericaRoll == 10)
				return("painteddesert_groundmix_4");
			if (desertNorthAmericaRoll == 11)
				return("grandcanyon_frstflr");
			if (desertNorthAmericaRoll == 12)
				return("grandcanyon_rock_7");
			if (desertNorthAmericaRoll == 13)
				return("texas_dirt");
			if (desertNorthAmericaRoll == 14)
				return("texas_dirt_Skirmish");
			if (desertNorthAmericaRoll == 15)
				return("texas_grass");
			if (desertNorthAmericaRoll == 16)
				return("texas grass");
			if (desertNorthAmericaRoll == 17)
				return("texas_grass_Skirmish");
			if (desertNorthAmericaRoll == 18)
				return("texas_grass_Skrimish");
			if (desertNorthAmericaRoll == 19)
				return("texas_cliff_top");
			return("texas_forest");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("africa savanna dirt");
			if (plainsAfricaRoll == 2)
				return("africa savanna forest");
			if (plainsAfricaRoll == 3)
				return("africa savanna grass");
			if (plainsAfricaRoll == 4)
				return("africa savanna grass dry");
			if (plainsAfricaRoll == 5)
				return("africa savanna sand");
			if (plainsAfricaRoll == 6)
				return("africa east dirt");
			if (plainsAfricaRoll == 7)
				return("africa east grass");
			if (plainsAfricaRoll == 8)
				return("africa east grass dry");
			if (plainsAfricaRoll == 9)
				return("Africa Desert Grass");
			return("africa desert grass medium");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("mongolia_grass");
			if (plainsAsiaRoll == 2)
				return("mongolia_grass_a");
			if (plainsAsiaRoll == 3)
				return("mongolia_grass_b");
			if (plainsAsiaRoll == 4)
				return("mongolia_forest");
			if (plainsAsiaRoll == 5)
				return("yellow_river_a");
			if (plainsAsiaRoll == 6)
				return("yellow_river_b");
			if (plainsAsiaRoll == 7)
				return("yellow_river_c");
			if (plainsAsiaRoll == 8)
				return("yellow_river_forest");
			if (plainsAsiaRoll == 9)
				return("Yellow_River_A");
			if (plainsAsiaRoll == 10)
				return("deccan_grass_a");
			if (plainsAsiaRoll == 11)
				return("Deccan_grass_a");
			if (plainsAsiaRoll == 12)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("italy_grass");
			if (plainsEuropeRoll == 2)
				return("italy_grass_dirt");
			if (plainsEuropeRoll == 3)
				return("italy_grass_dry");
			if (plainsEuropeRoll == 4)
				return("italy_grass_lush");
			if (plainsEuropeRoll == 5)
				return("italy_grass_medium");
			if (plainsEuropeRoll == 6)
				return("italy_grass_medium_dry");
			if (plainsEuropeRoll == 7)
				return("italy_north_grass");
			if (plainsEuropeRoll == 8)
				return("italy_north_dirt");
			if (plainsEuropeRoll == 9)
				return("danish_grass1");
			if (plainsEuropeRoll == 10)
				return("danish_grass2");
			if (plainsEuropeRoll == 11)
				return("danish_grass3");
			if (plainsEuropeRoll == 12)
				return("pampas_grass");
			return("pampas_grassy");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("great plains drygrass");
			if (plainsNorthAmericaRoll == 2)
				return("great plains grass");
			if (plainsNorthAmericaRoll == 3)
				return("Great Plains grass");
			if (plainsNorthAmericaRoll == 4)
				return("great plains grass01");
			if (plainsNorthAmericaRoll == 5)
				return("great plains forest");
			if (plainsNorthAmericaRoll == 6)
				return("Great Plains Forest");
			if (plainsNorthAmericaRoll == 7)
				return("texas grass");
			if (plainsNorthAmericaRoll == 8)
				return("texas_grass");
			if (plainsNorthAmericaRoll == 9)
				return("texas_grass_Skirmish");
			if (plainsNorthAmericaRoll == 10)
				return("texas_grass_Skrimish");
			if (plainsNorthAmericaRoll == 11)
				return("california_grass");
			if (plainsNorthAmericaRoll == 12)
				return("california_grassrocks");
			if (plainsNorthAmericaRoll == 13)
				return("carolina_grass");
			if (plainsNorthAmericaRoll == 14)
				return("carolina_grassier");
			return("carolina_grass_dry");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("andes_dirt_a");
			if (mountainSouthAmericaRoll == 2)
				return("andes_grass_a");
			if (mountainSouthAmericaRoll == 3)
				return("andes_grass_b");
			if (mountainSouthAmericaRoll == 4)
				return("araucania_dirt_b");
			if (mountainSouthAmericaRoll == 5)
				return("araucania_grass_a");
			if (mountainSouthAmericaRoll == 6)
				return("araucania_grass_b");
			if (mountainSouthAmericaRoll == 7)
				return("araucania_north_dirt_a");
			if (mountainSouthAmericaRoll == 8)
				return("araucania_north_forest");
			if (mountainSouthAmericaRoll == 9)
				return("araucania_north_grass_a");
			if (mountainSouthAmericaRoll == 10)
				return("araucania_north_grass_c");
			if (mountainSouthAmericaRoll == 11)
				return("araucania_snow_a");
			if (mountainSouthAmericaRoll == 12)
				return("araucania_snow_b");
			if (mountainSouthAmericaRoll == 13)
				return("araucania_snow_c");
			if (mountainSouthAmericaRoll == 14)
				return("patagonia_dirt");
			return("patagonia_grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("himalayas_a");
			if (mountainAsiaRoll == 2)
				return("himalayas_b");
			if (mountainAsiaRoll == 3)
				return("himalayas_c");
			if (mountainAsiaRoll == 4)
				return("mongolia_grass");
			if (mountainAsiaRoll == 5)
				return("mongolia_grass_a");
			if (mountainAsiaRoll == 6)
				return("mongolia_grass_b");
			if (mountainAsiaRoll == 7)
				return("mongolia_desert");
			if (mountainAsiaRoll == 8)
				return("deccan_dirt_a");
			if (mountainAsiaRoll == 9)
				return("deccan_grass_a");
			if (mountainAsiaRoll == 10)
				return("Deccan_grass_a");
			if (mountainAsiaRoll == 11)
				return("deccan_grass_b");
			return("Deccan_Grass_B");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("italy_cliff_bottom");
			if (mountainEuropeRoll == 2)
				return("italy_cliff_top");
			if (mountainEuropeRoll == 3)
				return("italy_cliff_top_dry");
			if (mountainEuropeRoll == 4)
				return("italy_cliff_top_dry_grass");
			if (mountainEuropeRoll == 5)
				return("italy_cliff_top_grass");
			if (mountainEuropeRoll == 6)
				return("italy_snow");
			if (mountainEuropeRoll == 7)
				return("italy_snow_cliff");
			if (mountainEuropeRoll == 8)
				return("italy_snow_dirt");
			if (mountainEuropeRoll == 9)
				return("italy_snow_forest");
			if (mountainEuropeRoll == 10)
				return("italy_snow_grass");
			if (mountainEuropeRoll == 11)
				return("italy_snow_grass_blendb");
			if (mountainEuropeRoll == 12)
				return("pampas_dirt");
			return("pampas_forest_dirt");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("rockies_dirt_snow");
			if (mountainNorthAmericaRoll == 2)
				return("rockies_grass");
			if (mountainNorthAmericaRoll == 3)
				return("rockies_grass_forest");
			if (mountainNorthAmericaRoll == 4)
				return("rockies_grass_snow");
			if (mountainNorthAmericaRoll == 5)
				return("rockies_grass_snowa");
			if (mountainNorthAmericaRoll == 6)
				return("rockies_grass_snowb");
			if (mountainNorthAmericaRoll == 7)
				return("rockies_grass_snowc");
			if (mountainNorthAmericaRoll == 8)
				return("rockies_grass_snowd");
			if (mountainNorthAmericaRoll == 9)
				return("rockies_snow");
			if (mountainNorthAmericaRoll == 10)
				return("rockies_snow_forest");
			if (mountainNorthAmericaRoll == 11)
				return("rockies_snowa");
			if (mountainNorthAmericaRoll == 12)
				return("nwt_dirt");
			if (mountainNorthAmericaRoll == 13)
				return("nwt_grass_dirt");
			if (mountainNorthAmericaRoll == 14)
				return("nwt_grass1");
			return("nwt_grass2");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazon Dirt");
			if (wetlandSouthAmericaRoll == 2)
				return("Amazon Grass");
			if (wetlandSouthAmericaRoll == 3)
				return("amazon grass");
			if (wetlandSouthAmericaRoll == 4)
				return("amazon grass dirt");
			if (wetlandSouthAmericaRoll == 5)
				return("Amazon Grass Dirt");
			if (wetlandSouthAmericaRoll == 6)
				return("amazon grass medium");
			if (wetlandSouthAmericaRoll == 7)
				return("Amazon Grass Medium");
			if (wetlandSouthAmericaRoll == 8)
				return("orinoco grass");
			if (wetlandSouthAmericaRoll == 9)
				return("yucatan_grass");
			if (wetlandSouthAmericaRoll == 10)
				return("caribbean grass");
			if (wetlandSouthAmericaRoll == 11)
				return("Caribbean Ground 3");
			return("CaribbeanSkirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("borneo_grass_a");
			if (wetlandAsiaRoll == 2)
				return("borneo_grass_b");
			if (wetlandAsiaRoll == 3)
				return("borneo_sand_a");
			if (wetlandAsiaRoll == 4)
				return("borneo_underbrush");
			if (wetlandAsiaRoll == 5)
				return("indochina_grass_a");
			if (wetlandAsiaRoll == 6)
				return("indochina_underbrush");
			if (wetlandAsiaRoll == 7)
				return("ceylon_grass_a");
			if (wetlandAsiaRoll == 8)
				return("ceylon_sand_a");
			if (wetlandAsiaRoll == 9)
				return("deccan_grass_a");
			if (wetlandAsiaRoll == 10)
				return("Deccan_grass_a");
			if (wetlandAsiaRoll == 11)
				return("Deccan_Grass_A");
			if (wetlandAsiaRoll == 12)
				return("deccan_grass_b");
			if (wetlandAsiaRoll == 13)
				return("Deccan_Grass_B");
			if (wetlandAsiaRoll == 14)
				return("deccan_grassy_dirt_a");
			if (wetlandAsiaRoll == 15)
				return("deccan_grassy_Dirt_a");
			return("deccan_grassy_dirt_a_noprops");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean grass");
			if (wetlandIslandRoll == 2)
				return("Caribbean Ground 3");
			if (wetlandIslandRoll == 3)
				return("CaribbeanSkirmish");
			if (wetlandIslandRoll == 4)
				return("caribbeanSkirmish");
			if (wetlandIslandRoll == 5)
				return("california_shoregrass");
			if (wetlandIslandRoll == 6)
				return("carolina_marsh");
			if (wetlandIslandRoll == 7)
				return("bayou_grass");
			return("bayou_grass_skirmish");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("greatlakes_snow");
			if (coldEuropeRoll == 2)
				return("great_lakes_ice");
			if (coldEuropeRoll == 3)
				return("ground_ice1_gl");
			if (coldEuropeRoll == 4)
				return("winter_wonderland_ice");
			if (coldEuropeRoll == 5)
				return("winter_wonderland_middle_ice");
			if (coldEuropeRoll == 6)
				return("italy_snow");
			if (coldEuropeRoll == 7)
				return("italy_snow_cliff");
			if (coldEuropeRoll == 8)
				return("italy_snow_dirt");
			if (coldEuropeRoll == 9)
				return("italy_snow_forest");
			if (coldEuropeRoll == 10)
				return("italy_snow_grass");
			if (coldEuropeRoll == 11)
				return("italy_snow_grass_blendb");
			return("saguenay tundra");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("siberia_grass_snowb");
			if (coldAsiaRoll == 2)
				return("himalayas_a");
			if (coldAsiaRoll == 3)
				return("himalayas_b");
			if (coldAsiaRoll == 4)
				return("himalayas_c");
			if (coldAsiaRoll == 5)
				return("rockies_snow");
			if (coldAsiaRoll == 6)
				return("california_snowground");
			if (coldAsiaRoll == 7)
				return("california_snowground2");
			return("california_snowground3");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("yukon snow");
			if (coldNorthAmericaRoll == 2)
				return("yukon grass");
			if (coldNorthAmericaRoll == 3)
				return("greatlakes_snow");
			if (coldNorthAmericaRoll == 4)
				return("great_lakes_ice");
			if (coldNorthAmericaRoll == 5)
				return("ground_ice1_gl");
			if (coldNorthAmericaRoll == 6)
				return("rockies_snow");
			if (coldNorthAmericaRoll == 7)
				return("rockies_snow_forest");
			if (coldNorthAmericaRoll == 8)
				return("rockies_snowa");
			if (coldNorthAmericaRoll == 9)
				return("rockies_grass_snow");
			if (coldNorthAmericaRoll == 10)
				return("rockies_grass_snowa");
			if (coldNorthAmericaRoll == 11)
				return("rockies_grass_snowb");
			if (coldNorthAmericaRoll == 12)
				return("rockies_grass_snowc");
			if (coldNorthAmericaRoll == 13)
				return("rockies_grass_snowd");
			if (coldNorthAmericaRoll == 14)
				return("saguenay tundra");
			return("california_snowground");
		}
	}
	return("great plains drygrass");
}

int cbeShouldSetBaseTerrainMix(int biomeTheme = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0);
	return(1);
}

// ================================================================
// Ground Textures
// ================================================================

string cbeGetBaseTerrain(int biomeTheme = 1, int regionFlavor = 1, int selectionRoll = 0)
{
	int caveRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 17);
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 6);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 26);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 28);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 31);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 10);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 24);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 21);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 11);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 26);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("cave\cave_ground5");
		if (caveRoll == 2)
			return("Cave\cave_ground5");
		if (caveRoll == 3)
			return("cave\cave_top");
		if (caveRoll == 4)
			return("cave\cave_top_a");
		if (caveRoll == 5)
			return("cave\cave_top_a_passable");
		return("cave\\cave_ground5");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("new_england\ground1_ne");
			if (forestEuropeRoll == 2)
				return("new_england\ground2_ne");
			if (forestEuropeRoll == 3)
				return("new_england\ground3_ne");
			if (forestEuropeRoll == 4)
				return("new_england\ground4_ne");
			if (forestEuropeRoll == 5)
				return("new_england\ground5_ne");
			return("new_england\groundforest_ne");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("coastal_japan\ground_dirt1_co_japan");
			if (forestAsiaRoll == 2)
				return("coastal_japan\ground_dirt2_co_japan");
			if (forestAsiaRoll == 3)
				return("coastal_japan\ground_dirt3_co_japan");
			if (forestAsiaRoll == 4)
				return("coastal_japan\ground_dirt4_co_japan");
			if (forestAsiaRoll == 5)
				return("coastal_japan\ground_forest_co_japan");
			if (forestAsiaRoll == 6)
				return("coastal_japan\ground_Grass1_co_japan");
			if (forestAsiaRoll == 7)
				return("coastal_japan\ground_grass1_co_japan");
			if (forestAsiaRoll == 8)
				return("coastal_japan\ground_grass2_co_japan");
			if (forestAsiaRoll == 9)
				return("coastal_japan\ground_grass3_co_japan");
			if (forestAsiaRoll == 10)
				return("Yellow_river\forest_yellow_riv");
			if (forestAsiaRoll == 11)
				return("Yellow_river\grass1_yellow_riv");
			if (forestAsiaRoll == 12)
				return("Yellow_river\grass2_yellow_riv");
			return("Yellow_river\grass3_yellow_riv");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("Carolinas\forestfloor_longleafpine");
			if (forestNorthAmericaRoll == 2)
				return("Carolinas\grass2");
			if (forestNorthAmericaRoll == 3)
				return("carolinas\grass3");
			if (forestNorthAmericaRoll == 4)
				return("Carolinas\grass4");
			if (forestNorthAmericaRoll == 5)
				return("carolinas\grass4");
			if (forestNorthAmericaRoll == 6)
				return("Carolinas\grass5");
			if (forestNorthAmericaRoll == 7)
				return("carolinas\ground_grass2_car");
			if (forestNorthAmericaRoll == 8)
				return("carolinas\ground_grass3_car");
			if (forestNorthAmericaRoll == 9)
				return("carolinas\ground_grass4_car");
			if (forestNorthAmericaRoll == 10)
				return("carolinas\ground_grass5_car");
			if (forestNorthAmericaRoll == 11)
				return("carolinas\ground_grass6_car");
			if (forestNorthAmericaRoll == 12)
				return("great_lakes\ground_forest_gl");
			if (forestNorthAmericaRoll == 13)
				return("great_lakes\ground_grass1_gl");
			if (forestNorthAmericaRoll == 14)
				return("great_lakes\ground_grass4_gl");
			if (forestNorthAmericaRoll == 15)
				return("great_lakes\ground_grass5_gl");
			if (forestNorthAmericaRoll == 16)
				return("california\groundforest_cal");
			return("california\groundforest2_cal");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("AfricaRainforest\ground_dirt1_afriRainforest");
			if (jungleAfricaRoll == 2)
				return("AfricaRainforest\ground_dirt2_afriRainforest");
			if (jungleAfricaRoll == 3)
				return("AfricaRainforest\ground_grass1_afriRainforest");
			if (jungleAfricaRoll == 4)
				return("AfricaRainforest\ground_grass4_afriRainforest");
			if (jungleAfricaRoll == 5)
				return("AfricaSavanna\ground_forest1_afriSavanna");
			return("AfricaSavanna\ground_forest2_afriSavanna");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo\ground_forest_borneo");
			if (jungleAsiaRoll == 2)
				return("borneo\ground_grass1_borneo");
			if (jungleAsiaRoll == 3)
				return("borneo\ground_grass2_borneo");
			if (jungleAsiaRoll == 4)
				return("borneo\ground_grass3_borneo");
			if (jungleAsiaRoll == 5)
				return("borneo\ground_grass4_borneo");
			if (jungleAsiaRoll == 6)
				return("borneo\ground_grass5_borneo");
			if (jungleAsiaRoll == 7)
				return("borneo\ground_sand1_borneo");
			if (jungleAsiaRoll == 8)
				return("borneo\ground_sand2_borneo");
			if (jungleAsiaRoll == 9)
				return("borneo\ground_sand3_borneo");
			if (jungleAsiaRoll == 10)
				return("Ceylon\ground_grass2_Ceylon");
			if (jungleAsiaRoll == 11)
				return("ceylon\ground_grass3_ceylon");
			if (jungleAsiaRoll == 12)
				return("Ceylon\ground_sand1_Ceylon");
			if (jungleAsiaRoll == 13)
				return("Ceylon\ground_sand2_Ceylon");
			if (jungleAsiaRoll == 14)
				return("ceylon\ground_sand2_ceylon");
			if (jungleAsiaRoll == 15)
				return("ceylon\ground_sand3_ceylon");
			if (jungleAsiaRoll == 16)
				return("Ceylon\ground_sand3_Ceylon");
			if (jungleAsiaRoll == 17)
				return("ceylon\ground_sand4_ceylon");
			if (jungleAsiaRoll == 18)
				return("deccan\ground_dirt2_deccan");
			if (jungleAsiaRoll == 19)
				return("deccan\ground_dirt3_deccan");
			if (jungleAsiaRoll == 20)
				return("deccan\ground_dirt4_deccan");
			if (jungleAsiaRoll == 21)
				return("deccan\ground_dirt5_deccan");
			if (jungleAsiaRoll == 22)
				return("deccan\ground_grass2_deccan");
			if (jungleAsiaRoll == 23)
				return("Deccan\ground_grass2_deccan");
			if (jungleAsiaRoll == 24)
				return("deccan\ground_grass3_deccan");
			if (jungleAsiaRoll == 25)
				return("Deccan\ground_grass4_deccan");
			return("lava\volcano_borneo");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("Amazon\ground1_ama");
			if (jungleSouthAmericaRoll == 2)
				return("Amazon\ground2_ama");
			if (jungleSouthAmericaRoll == 3)
				return("Amazon\ground3_ama");
			if (jungleSouthAmericaRoll == 4)
				return("amazon\ground4_ama");
			if (jungleSouthAmericaRoll == 5)
				return("Amazon\ground4_ama");
			if (jungleSouthAmericaRoll == 6)
				return("Amazon\ground5_ama");
			if (jungleSouthAmericaRoll == 7)
				return("Amazon\groundforest_ama");
			return("Amazon\cliff_top1_ama");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("Africa\groundCracked_afr");
			if (desertAfricaRoll == 2)
				return("africa\groundCracked_afr");
			if (desertAfricaRoll == 3)
				return("Africa\sand_afr");
			if (desertAfricaRoll == 4)
				return("AfricaDesert\ground_dirt1_afriDesert");
			if (desertAfricaRoll == 5)
				return("AfricaDesert\ground_dirt2_afriDesert");
			if (desertAfricaRoll == 6)
				return("AfricaDesert\ground_forest1_afriDesert");
			if (desertAfricaRoll == 7)
				return("AfricaDesert\ground_forest2_afriDesert");
			if (desertAfricaRoll == 8)
				return("AfricaDesert\ground_grass2_afriDesert");
			if (desertAfricaRoll == 9)
				return("AfricaDesert\ground_grass3_afriDesert");
			if (desertAfricaRoll == 10)
				return("AfricaDesert\ground_grass4_afriDesert");
			if (desertAfricaRoll == 11)
				return("AfricaDesert\ground_rock1_afriDesert");
			if (desertAfricaRoll == 12)
				return("AfricaDesert\ground_sand1_afriDesert");
			if (desertAfricaRoll == 13)
				return("AfricaDesert\ground_sand2_afriDesert");
			if (desertAfricaRoll == 14)
				return("painteddesert\pd_ground_diffuse_d");
			if (desertAfricaRoll == 15)
				return("painteddesert\pd_ground_diffuse_e");
			return("painteddesert\pd_ground_diffuse_f");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("himalayas\ground_dirt1_himal");
			if (desertAsiaRoll == 2)
				return("himalayas\ground_dirt2_himal");
			if (desertAsiaRoll == 3)
				return("himalayas\ground_dirt6_himal");
			if (desertAsiaRoll == 4)
				return("himalayas\ground_dirt8_himal");
			if (desertAsiaRoll == 5)
				return("mongolia\ground_sand1_mongol");
			if (desertAsiaRoll == 6)
				return("mongolia\ground_sand2_mongol");
			if (desertAsiaRoll == 7)
				return("mongolia\ground_sand3_mongol");
			if (desertAsiaRoll == 8)
				return("deccan\ground_dirt2_deccan");
			if (desertAsiaRoll == 9)
				return("deccan\ground_dirt3_deccan");
			if (desertAsiaRoll == 10)
				return("deccan\ground_dirt4_deccan");
			if (desertAsiaRoll == 11)
				return("deccan\ground_dirt5_deccan");
			if (desertAsiaRoll == 12)
				return("lava\volcano_dirt");
			return("lava\crater_passable");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("sonora\cliff_edge_son");
			if (desertNorthAmericaRoll == 2)
				return("sonora\ground1_son");
			if (desertNorthAmericaRoll == 3)
				return("sonora\ground1clifftop_son");
			if (desertNorthAmericaRoll == 4)
				return("sonora\ground2_son");
			if (desertNorthAmericaRoll == 5)
				return("sonora\ground3_son");
			if (desertNorthAmericaRoll == 6)
				return("sonora\ground4_son");
			if (desertNorthAmericaRoll == 7)
				return("sonora\ground5_son");
			if (desertNorthAmericaRoll == 8)
				return("sonora\ground6_son");
			if (desertNorthAmericaRoll == 9)
				return("sonora\ground7_son");
			if (desertNorthAmericaRoll == 10)
				return("sonora\groundforest_son");
			if (desertNorthAmericaRoll == 11)
				return("texas\cliff_edge_tex");
			if (desertNorthAmericaRoll == 12)
				return("Texas\cliff_edge_tex");
			if (desertNorthAmericaRoll == 13)
				return("texas\Cliff_gravel_tex");
			if (desertNorthAmericaRoll == 14)
				return("Texas\cliff_top_tex");
			if (desertNorthAmericaRoll == 15)
				return("texas\cliff_top_tex");
			if (desertNorthAmericaRoll == 16)
				return("texas\Gravel_tex");
			if (desertNorthAmericaRoll == 17)
				return("texas\ground1_tex");
			if (desertNorthAmericaRoll == 18)
				return("Texas\ground1_tex");
			if (desertNorthAmericaRoll == 19)
				return("texas\ground2");
			if (desertNorthAmericaRoll == 20)
				return("texas\ground2_tex");
			if (desertNorthAmericaRoll == 21)
				return("Texas\ground2_tex");
			if (desertNorthAmericaRoll == 22)
				return("texas\ground3_tex");
			if (desertNorthAmericaRoll == 23)
				return("Texas\ground3_tex");
			if (desertNorthAmericaRoll == 24)
				return("texas\ground4_tex");
			if (desertNorthAmericaRoll == 25)
				return("Texas\ground4_tex");
			if (desertNorthAmericaRoll == 26)
				return("texas\ground5_tex");
			if (desertNorthAmericaRoll == 27)
				return("Texas\ground5_tex");
			return("texas\groundforest_tex");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("africa\ground1_afr");
			if (plainsAfricaRoll == 2)
				return("Africa\ground1_afr");
			if (plainsAfricaRoll == 3)
				return("Africa\ground2_afr");
			if (plainsAfricaRoll == 4)
				return("Africa\ground3_afr");
			if (plainsAfricaRoll == 5)
				return("africa\ground3_afr");
			if (plainsAfricaRoll == 6)
				return("Africa\groundStraw_afr");
			if (plainsAfricaRoll == 7)
				return("Africa\pathBlend_afr");
			if (plainsAfricaRoll == 8)
				return("AfricaSavanna\ground_dirt2_afriSavanna");
			if (plainsAfricaRoll == 9)
				return("AfricaSavanna\ground_forest1_afriSavanna");
			if (plainsAfricaRoll == 10)
				return("AfricaSavanna\ground_forest2_afriSavanna");
			if (plainsAfricaRoll == 11)
				return("AfricaSavanna\ground_rock1_afriSavanna");
			return("AfricaDesert\ground_grass4_afriDesert");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("Mongolia\ground_grass1_mongol");
			if (plainsAsiaRoll == 2)
				return("mongolia\ground_grass1_co_japan");
			if (plainsAsiaRoll == 3)
				return("mongolia\ground_grass3_mongol");
			if (plainsAsiaRoll == 4)
				return("mongolia\ground_grass4_mongol");
			if (plainsAsiaRoll == 5)
				return("Mongolia\ground_grass4_mongol");
			if (plainsAsiaRoll == 6)
				return("mongolia\ground_grass5_mongol");
			if (plainsAsiaRoll == 7)
				return("mongolia\ground_grass6_mongol");
			if (plainsAsiaRoll == 8)
				return("Yellow_river\grass1_yellow_riv");
			if (plainsAsiaRoll == 9)
				return("Yellow_river\grass2_yellow_riv");
			if (plainsAsiaRoll == 10)
				return("yellow_river\grass2_yellow_riv");
			if (plainsAsiaRoll == 11)
				return("Yellow_river\grass3_yellow_riv");
			if (plainsAsiaRoll == 12)
				return("Yellow_river\grass4_yellow_riv");
			if (plainsAsiaRoll == 13)
				return("Yellow_river\stone1_yellow_riv");
			return("Yellow_river\stone3_yellow_riv");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("pampas\ground1_pam");
			if (plainsEuropeRoll == 2)
				return("Pampas\ground1_pam");
			if (plainsEuropeRoll == 3)
				return("pampas\ground2_pam");
			if (plainsEuropeRoll == 4)
				return("pampas\ground3_pam");
			if (plainsEuropeRoll == 5)
				return("Pampas\ground3_pam");
			if (plainsEuropeRoll == 6)
				return("Pampas\ground4_pam");
			if (plainsEuropeRoll == 7)
				return("pampas\ground4_pam");
			if (plainsEuropeRoll == 8)
				return("Pampas\ground5_pam");
			if (plainsEuropeRoll == 9)
				return("pampas\ground5_pam");
			return("pampas\ground6_pam");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("great_plains\default");
			if (plainsNorthAmericaRoll == 2)
				return("great_plains\ground1_gp");
			if (plainsNorthAmericaRoll == 3)
				return("great_plains\ground2_gp");
			if (plainsNorthAmericaRoll == 4)
				return("great_plains\ground3_gp");
			if (plainsNorthAmericaRoll == 5)
				return("great_plains\ground4_gp");
			if (plainsNorthAmericaRoll == 6)
				return("great_plains\ground5_gp");
			if (plainsNorthAmericaRoll == 7)
				return("great_plains\ground6_gp");
			if (plainsNorthAmericaRoll == 8)
				return("great_plains\ground7_gp");
			if (plainsNorthAmericaRoll == 9)
				return("great_plains\ground7a_gp");
			if (plainsNorthAmericaRoll == 10)
				return("great_plains\ground8_gp");
			if (plainsNorthAmericaRoll == 11)
				return("great_plains\groundforest_gp");
			if (plainsNorthAmericaRoll == 12)
				return("texas\cliff_top_grass_tex");
			if (plainsNorthAmericaRoll == 13)
				return("Texas\cliff_top_grass_tex");
			if (plainsNorthAmericaRoll == 14)
				return("texas\ground1_tex");
			if (plainsNorthAmericaRoll == 15)
				return("texas\ground2_tex");
			if (plainsNorthAmericaRoll == 16)
				return("texas\ground3_tex");
			if (plainsNorthAmericaRoll == 17)
				return("texas\ground4_tex");
			return("texas\ground5_tex");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("andes\ground07_and");
			if (mountainSouthAmericaRoll == 2)
				return("andes\ground08_and");
			if (mountainSouthAmericaRoll == 3)
				return("andes\ground09_and");
			if (mountainSouthAmericaRoll == 4)
				return("andes\ground10_and");
			if (mountainSouthAmericaRoll == 5)
				return("andes\ground11_and");
			if (mountainSouthAmericaRoll == 6)
				return("andes\ground12_and");
			if (mountainSouthAmericaRoll == 7)
				return("andes\ground14_and");
			if (mountainSouthAmericaRoll == 8)
				return("andes\ground17_and");
			if (mountainSouthAmericaRoll == 9)
				return("andes\ground18_and");
			if (mountainSouthAmericaRoll == 10)
				return("andes\ground2_and");
			if (mountainSouthAmericaRoll == 11)
				return("andes\ground22_and");
			if (mountainSouthAmericaRoll == 12)
				return("andes\ground25_and");
			if (mountainSouthAmericaRoll == 13)
				return("andes\ground4_and");
			if (mountainSouthAmericaRoll == 14)
				return("araucania\ground_dirt1_ara");
			if (mountainSouthAmericaRoll == 15)
				return("araucania\ground_dirt2_ara");
			if (mountainSouthAmericaRoll == 16)
				return("araucania\ground_dirt3_ara");
			if (mountainSouthAmericaRoll == 17)
				return("araucania\ground_grass1_ara");
			if (mountainSouthAmericaRoll == 18)
				return("araucania\ground_grass1_ara_ozarks");
			if (mountainSouthAmericaRoll == 19)
				return("araucania\ground_grass2_ara");
			if (mountainSouthAmericaRoll == 20)
				return("araucania\ground_snow1_ara");
			if (mountainSouthAmericaRoll == 21)
				return("araucania\ground_snow2_ara");
			if (mountainSouthAmericaRoll == 22)
				return("araucania\ground_snow3_ara");
			if (mountainSouthAmericaRoll == 23)
				return("araucania\ground_snow4_ara");
			if (mountainSouthAmericaRoll == 24)
				return("araucania\ground_snow5_ara");
			if (mountainSouthAmericaRoll == 25)
				return("araucania\ground07_ara");
			if (mountainSouthAmericaRoll == 26)
				return("araucania\ground07_b_ara");
			if (mountainSouthAmericaRoll == 27)
				return("araucania\ground10_ara");
			if (mountainSouthAmericaRoll == 28)
				return("araucania\ground11_ara");
			if (mountainSouthAmericaRoll == 29)
				return("araucania\ground12_ara");
			if (mountainSouthAmericaRoll == 30)
				return("patagonia\ground_clifftop_pat");
			return("patagonia\ground_cliffedge_pat");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("himalayas\cliff_himal_top");
			if (mountainAsiaRoll == 2)
				return("himalayas\\cliff_himal_top");
			if (mountainAsiaRoll == 3)
				return("himalayas\ground_dirt1_himal");
			if (mountainAsiaRoll == 4)
				return("himalayas\ground_dirt2_himal");
			if (mountainAsiaRoll == 5)
				return("himalayas\ground_dirt6_himal");
			if (mountainAsiaRoll == 6)
				return("himalayas\ground_dirt8_himal");
			if (mountainAsiaRoll == 7)
				return("mongolia\ground_grass1_co_japan");
			if (mountainAsiaRoll == 8)
				return("mongolia\ground_grass3_mongol");
			if (mountainAsiaRoll == 9)
				return("mongolia\ground_grass4_mongol");
			if (mountainAsiaRoll == 10)
				return("Mongolia\ground_grass4_mongol");
			if (mountainAsiaRoll == 11)
				return("mongolia\ground_grass5_mongol");
			if (mountainAsiaRoll == 12)
				return("mongolia\ground_grass6_mongol");
			return("deccan\wall_deccan");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("new_england\cliff_inland_side_ne");
			if (mountainEuropeRoll == 2)
				return("new_england\cliff_inland_top_ne");
			if (mountainEuropeRoll == 3)
				return("new_england\cliff_side_ne");
			if (mountainEuropeRoll == 4)
				return("new_england\ground2_cliff_ne");
			if (mountainEuropeRoll == 5)
				return("pampas\ground1_pam");
			if (mountainEuropeRoll == 6)
				return("pampas\ground2_pam");
			if (mountainEuropeRoll == 7)
				return("pampas\ground3_pam");
			if (mountainEuropeRoll == 8)
				return("pampas\ground4_pam");
			if (mountainEuropeRoll == 9)
				return("pampas\ground5_pam");
			return("pampas\ground6_pam");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("rockies\clifftop_roc");
			if (mountainNorthAmericaRoll == 2)
				return("rockies\ground1_roc");
			if (mountainNorthAmericaRoll == 3)
				return("rockies\ground2_roc");
			if (mountainNorthAmericaRoll == 4)
				return("rockies\ground3_roc");
			if (mountainNorthAmericaRoll == 5)
				return("rockies\ground4_roc");
			if (mountainNorthAmericaRoll == 6)
				return("rockies\ground5_roc");
			if (mountainNorthAmericaRoll == 7)
				return("rockies\groundforestsnow_roc");
			if (mountainNorthAmericaRoll == 8)
				return("rockies\groundsnow1_roc");
			if (mountainNorthAmericaRoll == 9)
				return("rockies\groundsnow2_roc");
			if (mountainNorthAmericaRoll == 10)
				return("rockies\groundsnow3");
			if (mountainNorthAmericaRoll == 11)
				return("rockies\groundsnow3_roc");
			if (mountainNorthAmericaRoll == 12)
				return("rockies\groundsnow5_roc");
			if (mountainNorthAmericaRoll == 13)
				return("rockies\groundsnow6_roc");
			if (mountainNorthAmericaRoll == 14)
				return("rockies\groundsnow7_roc");
			if (mountainNorthAmericaRoll == 15)
				return("rockies\groundsnow8_roc");
			if (mountainNorthAmericaRoll == 16)
				return("nwterritory\ground_grass1_nwt");
			if (mountainNorthAmericaRoll == 17)
				return("NWterritory\ground_grass1_nwt");
			if (mountainNorthAmericaRoll == 18)
				return("NWterritory\ground_grass1a_nwt");
			if (mountainNorthAmericaRoll == 19)
				return("nwterritory\ground_grass1a_nwt");
			if (mountainNorthAmericaRoll == 20)
				return("nwterritory\ground_grass2_nwt");
			if (mountainNorthAmericaRoll == 21)
				return("NWterritory\ground_grass2_nwt");
			if (mountainNorthAmericaRoll == 22)
				return("nwterritory\ground_grass3_nwt");
			if (mountainNorthAmericaRoll == 23)
				return("NWterritory\ground_grass3_nwt");
			return("NWterritory\ground_grass5_nwt");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazon\river2_am");
			if (wetlandSouthAmericaRoll == 2)
				return("Amazon\ground_road_ama");
			if (wetlandSouthAmericaRoll == 3)
				return("Amazon\ground1_ama");
			if (wetlandSouthAmericaRoll == 4)
				return("Amazon\ground2_ama");
			if (wetlandSouthAmericaRoll == 5)
				return("Amazon\ground3_ama");
			if (wetlandSouthAmericaRoll == 6)
				return("amazon\ground4_ama");
			if (wetlandSouthAmericaRoll == 7)
				return("Amazon\ground4_ama");
			if (wetlandSouthAmericaRoll == 8)
				return("Amazon\ground5_ama");
			if (wetlandSouthAmericaRoll == 9)
				return("Amazon\groundforest_ama");
			if (wetlandSouthAmericaRoll == 10)
				return("bayou\ground1_bay");
			if (wetlandSouthAmericaRoll == 11)
				return("bayou\ground2_bay");
			if (wetlandSouthAmericaRoll == 12)
				return("bayou\ground3_bay");
			if (wetlandSouthAmericaRoll == 13)
				return("bayou\ground4_passable_bay");
			if (wetlandSouthAmericaRoll == 14)
				return("bayou\ground8_bay");
			return("bayou\groundforest_bay");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("borneo\shoreline1_borneo");
			if (wetlandAsiaRoll == 2)
				return("borneo\ground_forest_borneo");
			if (wetlandAsiaRoll == 3)
				return("borneo\ground_grass1_borneo");
			if (wetlandAsiaRoll == 4)
				return("borneo\ground_grass2_borneo");
			if (wetlandAsiaRoll == 5)
				return("borneo\ground_sand1_borneo");
			if (wetlandAsiaRoll == 6)
				return("borneo\ground_sand2_borneo");
			if (wetlandAsiaRoll == 7)
				return("borneo\ground_sand3_borneo");
			if (wetlandAsiaRoll == 8)
				return("ceylon\ground_shoreline2_ceylon");
			if (wetlandAsiaRoll == 9)
				return("Ceylon\ground_grass2_Ceylon");
			if (wetlandAsiaRoll == 10)
				return("ceylon\ground_grass3_ceylon");
			if (wetlandAsiaRoll == 11)
				return("Ceylon\ground_sand1_Ceylon");
			if (wetlandAsiaRoll == 12)
				return("Ceylon\ground_sand2_Ceylon");
			if (wetlandAsiaRoll == 13)
				return("ceylon\ground_sand2_ceylon");
			if (wetlandAsiaRoll == 14)
				return("ceylon\ground_sand3_ceylon");
			if (wetlandAsiaRoll == 15)
				return("Ceylon\ground_sand3_Ceylon");
			if (wetlandAsiaRoll == 16)
				return("ceylon\ground_sand4_ceylon");
			if (wetlandAsiaRoll == 17)
				return("deccan\ground_grass2_deccan");
			if (wetlandAsiaRoll == 18)
				return("Deccan\ground_grass2_deccan");
			if (wetlandAsiaRoll == 19)
				return("deccan\ground_grass3_deccan");
			if (wetlandAsiaRoll == 20)
				return("Deccan\ground_grass4_deccan");
			return("zpaustralia\groundshore_australia");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("caribbean\ground_shoreline1_crb");
			if (wetlandIslandRoll == 2)
				return("caribbean\ground_shoreline2_crb");
			if (wetlandIslandRoll == 3)
				return("caribbean\ground_shoreline3_crb");
			if (wetlandIslandRoll == 4)
				return("caribbean\ground1_crb");
			if (wetlandIslandRoll == 5)
				return("caribbean\ground2_crb");
			if (wetlandIslandRoll == 6)
				return("caribbean\ground3_crb");
			if (wetlandIslandRoll == 7)
				return("caribbean\ground4_crb");
			if (wetlandIslandRoll == 8)
				return("caribbean\ground6_crb");
			if (wetlandIslandRoll == 9)
				return("caribbean\ground7_crb");
			if (wetlandIslandRoll == 10)
				return("caribbean\groundforest_crb");
			return("caribbean\groundforestNative_crb");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("great_lakes\ground_ice1_gl");
			if (coldEuropeRoll == 2)
				return("great_lakes\ground_ice1_glw");
			if (coldEuropeRoll == 3)
				return("great_lakes\ground_ice2_gl");
			if (coldEuropeRoll == 4)
				return("great_lakes\ground_ice2_glw");
			if (coldEuropeRoll == 5)
				return("great_lakes\ground_ice3_glw");
			if (coldEuropeRoll == 6)
				return("great_lakes\ground_snow1_gl");
			if (coldEuropeRoll == 7)
				return("great_lakes\ground_snow1_w_gl");
			if (coldEuropeRoll == 8)
				return("great_lakes\ground_snow2_gl");
			if (coldEuropeRoll == 9)
				return("great_lakes\ground_snow2_w_gl");
			if (coldEuropeRoll == 10)
				return("great_lakes\ground_snow3_gl");
			if (coldEuropeRoll == 11)
				return("great_lakes\groundforest_snow_gl");
			return("rockies_snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("yukon\ground_grass2_gl");
			if (coldAsiaRoll == 2)
				return("yukon\ground1_yuk");
			if (coldAsiaRoll == 3)
				return("Yukon\ground10_yuk");
			if (coldAsiaRoll == 4)
				return("yukon\ground10_yuk");
			if (coldAsiaRoll == 5)
				return("yukon\ground11_yuk");
			if (coldAsiaRoll == 6)
				return("yukon\ground2_yuk");
			if (coldAsiaRoll == 7)
				return("yukon\ground3_yuk");
			if (coldAsiaRoll == 8)
				return("yukon\ground3x_yuk");
			if (coldAsiaRoll == 9)
				return("yukon\ground4_yuk");
			if (coldAsiaRoll == 10)
				return("yukon\ground5_yuk");
			if (coldAsiaRoll == 11)
				return("yukon\ground6_yuk");
			return("yukon\ground8_yuk");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("yukon\ground_grass2_gl");
			if (coldNorthAmericaRoll == 2)
				return("yukon\ground1_yuk");
			if (coldNorthAmericaRoll == 3)
				return("Yukon\ground10_yuk");
			if (coldNorthAmericaRoll == 4)
				return("yukon\ground10_yuk");
			if (coldNorthAmericaRoll == 5)
				return("yukon\ground11_yuk");
			if (coldNorthAmericaRoll == 6)
				return("yukon\ground2_yuk");
			if (coldNorthAmericaRoll == 7)
				return("yukon\ground3_yuk");
			if (coldNorthAmericaRoll == 8)
				return("yukon\ground3x_yuk");
			if (coldNorthAmericaRoll == 9)
				return("yukon\ground4_yuk");
			if (coldNorthAmericaRoll == 10)
				return("yukon\ground5_yuk");
			if (coldNorthAmericaRoll == 11)
				return("yukon\ground6_yuk");
			if (coldNorthAmericaRoll == 12)
				return("yukon\ground8_yuk");
			if (coldNorthAmericaRoll == 13)
				return("yukon\groundforestsnow_yuk");
			if (coldNorthAmericaRoll == 14)
				return("rockies\groundforestsnow_roc");
			if (coldNorthAmericaRoll == 15)
				return("rockies\groundsnow1_roc");
			if (coldNorthAmericaRoll == 16)
				return("rockies\groundsnow2_roc");
			if (coldNorthAmericaRoll == 17)
				return("rockies\groundsnow3");
			if (coldNorthAmericaRoll == 18)
				return("rockies\groundsnow3_roc");
			if (coldNorthAmericaRoll == 19)
				return("rockies\groundsnow5_roc");
			if (coldNorthAmericaRoll == 20)
				return("rockies\groundsnow6_roc");
			if (coldNorthAmericaRoll == 21)
				return("rockies\groundsnow7_roc");
			if (coldNorthAmericaRoll == 22)
				return("rockies\groundsnow8_roc");
			if (coldNorthAmericaRoll == 23)
				return("great_lakes\ground_snow1_gl");
			if (coldNorthAmericaRoll == 24)
				return("great_lakes\ground_snow2_gl");
			if (coldNorthAmericaRoll == 25)
				return("great_lakes\ground_snow3_gl");
			return("great_lakes\groundforest_snow_gl");
		}
	}
	return("grass");
}

// ================================================================
// Elevation
// ================================================================

float cbeGetTerrainInitHeight(int biomeTheme = 1, int geographyLandform = 1)
{
	if (biomeTheme == cbeBiomeCave())
		return(0.0);
	if (biomeTheme == cbeBiomeColdNorth())
		return(6.0);
	if (biomeTheme == cbeBiomeMountain() || geographyLandform == cbeGeoHighlandValley())
		return(6.0);
	if (biomeTheme == cbeBiomeDesert() || geographyLandform == cbeGeoCanyonlands())
		return(4.0);
	if (geographyLandform == cbeGeoRiverBasin() || geographyLandform == cbeGeoDelta())
		return(3.0);
	if (geographyLandform == cbeGeoHarbor() || geographyLandform == cbeGeoPeninsula() || geographyLandform == cbeGeoIslandCoast())
		return(2.0);
	return(0.0);
}

// ================================================================
// Feature Terrain Resources
// ================================================================

string cbeGetCliffType(int biomeTheme = 1, int regionFlavor = 1)
{
	int cliffRoll = rmRandInt(1, 3);
	int cliffRollAsiaJungle = rmRandInt(1, 9);

	if (biomeTheme == cbeBiomeCave())
	{
		if (cliffRoll == 1)
			return("Cave");
		if (cliffRoll == 2)
			return("cave");
		return("Cave_IGC");
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (cliffRoll == 1)
				return("Africa rainforest grass");
			if (cliffRoll == 2)
				return("africa savanna");
			return("Ethiopia Highland");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (cliffRollAsiaJungle == 1)
				return("ZP Borneo");
			if (cliffRollAsiaJungle == 2)
				return("ZP Borneo Grass");
			if (cliffRollAsiaJungle == 3)
				return("Ceylon");
			if (cliffRollAsiaJungle == 4)
				return("ceylon");
			if (cliffRollAsiaJungle == 5)
				return("Deccan Plateau");
			if (cliffRollAsiaJungle == 6)
				return("deccan plateau");
			if (cliffRollAsiaJungle == 7)
				return("Coastal Honshu");
			if (cliffRollAsiaJungle == 8)
				return("coastal japan");
			return("Coastal Japan");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (cliffRoll == 1)
				return("Yucatan");
			if (cliffRoll == 2)
				return("Amazon");
			return("ZP Amazon Aztec");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (cliffRoll == 1)
				return("Painteddesert");
			if (cliffRoll == 2)
				return("Africa Desert");
			return("Africa Desert Grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (cliffRoll == 1)
				return("himalayas");
			if (cliffRoll == 2)
				return("Himalayas");
			return("Deccan Plateau");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (cliffRoll == 1)
				return("sonora");
			if (cliffRoll == 2)
				return("Sonora");
			return("Texas Grass no cactus");
		}
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (cliffRoll == 1)
				return("New England");
			if (cliffRoll == 2)
				return("Italian Cliff Grassy");
			return("Irish Coast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (cliffRoll == 1)
				return("Coastal Honshu");
			if (cliffRoll == 2)
				return("Manchuria Grass");
			return("yellow river");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (cliffRoll == 1)
				return("Great Plains");
			if (cliffRoll == 2)
				return("Carolina Inland");
			return("New England Inland");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (cliffRoll == 1)
				return("andes");
			if (cliffRoll == 2)
				return("Araucania Central");
			return("patagonia");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (cliffRoll == 1)
				return("himalayas");
			if (cliffRoll == 2)
				return("Himalayas");
			return("SPC Mountain Pass");
		}
		if (regionFlavor == cbeRegionNorthAmerica() || regionFlavor == cbeRegionEurope())
		{
			if (cliffRoll == 1)
				return("rocky mountain2");
			if (cliffRoll == 2)
				return("Rocky Mountain Edge");
			return("Northwest Territory");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (cliffRoll == 1)
			return("Caribbean");
		if (cliffRoll == 2)
			return("Bayou");
		return("ZP Hawaii Medium");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (cliffRoll == 1)
			return("rocky mountain2");
		if (cliffRoll == 2)
			return("Northwest Territory");
		return("Patagonia");
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (cliffRoll == 1)
				return("pampas");
			if (cliffRoll == 2)
				return("Pampas");
			return("Araucania Central Ozarks");
		}
		if (regionFlavor == cbeRegionNorthAmerica() || regionFlavor == cbeRegionEurope())
		{
			if (cliffRoll == 1)
				return("Great Plains");
			if (cliffRoll == 2)
				return("Texas");
			return("Carolina Inland");
		}
	}
	return("Great Plains");
}

string cbeGetForestType(int biomeTheme = 1, int regionFlavor = 1)
{
	int forestRoll = rmRandInt(1, 3);
	int forestRollAsiaJungle = rmRandInt(1, 6);

	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (forestRoll == 1)
				return("Af Savanna Baobab Forest");
			if (forestRoll == 2)
				return("Af Tassili Forest");
			return("Great Plains Grass Green");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestRollAsiaJungle == 1)
				return("Borneo forest");
			if (forestRollAsiaJungle == 2)
				return("Borneo Forest");
			if (forestRollAsiaJungle == 3)
				return("bamboo Forest");
			if (forestRollAsiaJungle == 4)
				return("z59 Bamboo Jungle");
			if (forestRollAsiaJungle == 5)
				return("Ceylon Forest");
			return("Deccan Forest");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (forestRoll == 1)
				return("amazon rain forest");
			if (forestRoll == 2)
				return("Yucatan forest");
			return("North Araucania Forest");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (forestRoll == 1)
				return("dunes");
			if (forestRoll == 2)
				return("Af Tassili Forest");
			return("painteddesert forest");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestRoll == 1)
				return("Himalayas Forest");
			if (forestRoll == 2)
				return("Mongolian Forest");
			return("Deccan Forest");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestRoll == 1)
				return("california desert forest");
			if (forestRoll == 2)
				return("sonora forest");
			return("Texas Forest Dirt");
		}
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestRoll == 1)
				return("new england forest");
			if (forestRoll == 2)
				return("Italian Forest");
			return("z34 German Forest");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestRoll == 1)
				return("Coastal Japan Forest");
			if (forestRoll == 2)
				return("Yellow River forest");
			return("Ceylon Forest");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestRoll == 1)
				return("great lakes forest");
			if (forestRoll == 2)
				return("carolina pine forest");
			return("california redwood forest");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (forestRoll == 1)
				return("Great Plains Grass Green");
			if (forestRoll == 2)
				return("Af Savanna Baobab Forest");
			return("great plains grass");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestRoll == 1)
				return("Yellow River forest");
			if (forestRoll == 2)
				return("Mongolian Forest");
			return("bamboo Forest");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (forestRoll == 1)
				return("pampas forest");
			if (forestRoll == 2)
				return("North Araucania Forest");
			return("patagonia forest");
		}
		if (regionFlavor == cbeRegionNorthAmerica() || regionFlavor == cbeRegionEurope())
		{
			if (forestRoll == 1)
				return("Great Plains Forest");
			if (forestRoll == 2)
				return("Texas Forest");
			return("great plains forest");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (forestRoll == 1)
				return("andes forest");
			if (forestRoll == 2)
				return("North Araucania Forest");
			return("patagonia forest");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestRoll == 1)
				return("Himalayas Forest");
			if (forestRoll == 2)
				return("z38 Scandinavian Mountains");
			return("Mongolian Forest");
		}
		if (regionFlavor == cbeRegionNorthAmerica() || regionFlavor == cbeRegionEurope())
		{
			if (forestRoll == 1)
				return("NW Territory Forest");
			if (forestRoll == 2)
				return("rockies forest");
			return("saguenay forest");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (forestRoll == 1)
			return("Caribbean Palm Forest Skirmish");
		if (forestRoll == 2)
			return("caribbean palm forest");
		return("z79 hawaii");
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (forestRoll == 1)
			return("yukon snow forest");
		if (forestRoll == 2)
			return("great lakes forest snow");
		return("rockies snow forest");
	}
	return("great lakes forest");
}

// ================================================================
// Lighting Sets
// ================================================================

string cbeGetLightingSet(int biomeTheme = 1, int regionFlavor = 1, int selectionRoll = 0)
{
	int caveRoll = cbeResolveWorldResourceRoll(selectionRoll, 3);
	int forestEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 16);
	int forestAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int forestNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 18);
	int jungleAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int jungleAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int jungleSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int desertAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int desertAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int desertNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int plainsAfricaRoll = cbeResolveWorldResourceRoll(selectionRoll, 8);
	int plainsAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int plainsEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int plainsNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int mountainSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int mountainEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int mountainNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);
	int wetlandSouthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 15);
	int wetlandAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int wetlandIslandRoll = cbeResolveWorldResourceRoll(selectionRoll, 13);
	int coldEuropeRoll = cbeResolveWorldResourceRoll(selectionRoll, 12);
	int coldAsiaRoll = cbeResolveWorldResourceRoll(selectionRoll, 9);
	int coldNorthAmericaRoll = cbeResolveWorldResourceRoll(selectionRoll, 14);

	if (biomeTheme == cbeBiomeCave())
	{
		if (caveRoll == 1)
			return("alfheim");
		if (caveRoll == 2)
			return("spcjc4blight");
		return("spcjc4aflashback");
	}
	if (biomeTheme == cbeBiomeForest())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (forestEuropeRoll == 1)
				return("NewEngland_Skirmish");
			if (forestEuropeRoll == 2)
				return("newengland_Skirmish");
			if (forestEuropeRoll == 3)
				return("new england");
			if (forestEuropeRoll == 4)
				return("new england start");
			if (forestEuropeRoll == 5)
				return("Pymouth_Skirmish");
			if (forestEuropeRoll == 6)
				return("adirondacks_skirmish");
			if (forestEuropeRoll == 7)
				return("florida_Skirmish");
			if (forestEuropeRoll == 8)
				return("Florida_Skirmish");
			if (forestEuropeRoll == 9)
				return("Florida_Winter_Skirmish");
			if (forestEuropeRoll == 10)
				return("fertile_crescent_skirmish");
			if (forestEuropeRoll == 11)
				return("Fertile_Crescent_Skirmish");
			if (forestEuropeRoll == 12)
				return("seville morning");
			if (forestEuropeRoll == 13)
				return("ottoman morning");
			if (forestEuropeRoll == 14)
				return("Constantinople");
			if (forestEuropeRoll == 15)
				return("Great Lakes");
			return("GreatLakes_Summer_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (forestAsiaRoll == 1)
				return("Honshu");
			if (forestAsiaRoll == 2)
				return("honshu_skirmish");
			if (forestAsiaRoll == 3)
				return("honshu_Skirmish");
			if (forestAsiaRoll == 4)
				return("Honshu_skirmish");
			if (forestAsiaRoll == 5)
				return("Honshu_Skirmish");
			if (forestAsiaRoll == 6)
				return("Hokkaido_Skirmish");
			if (forestAsiaRoll == 7)
				return("Hokkaido_skirmish");
			if (forestAsiaRoll == 8)
				return("japan_misty_morning");
			if (forestAsiaRoll == 9)
				return("Korea_Skirmish");
			if (forestAsiaRoll == 10)
				return("Manchuria_Skirmish");
			if (forestAsiaRoll == 11)
				return("Manchuria_skirmish");
			if (forestAsiaRoll == 12)
				return("yellow_river_dry");
			if (forestAsiaRoll == 13)
				return("yellow_river_dry_skirmish");
			if (forestAsiaRoll == 14)
				return("yellow_river_wet_skirmish");
			if (forestAsiaRoll == 15)
				return("Mongolia");
			if (forestAsiaRoll == 16)
				return("mongolia");
			if (forestAsiaRoll == 17)
				return("mongolia_skirmish");
			return("Mongolia_skirmish");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (forestNorthAmericaRoll == 1)
				return("Carolina_Skirmish");
			if (forestNorthAmericaRoll == 2)
				return("carolina_skirmish");
			if (forestNorthAmericaRoll == 3)
				return("carolina");
			if (forestNorthAmericaRoll == 4)
				return("carolina_Skirmish");
			if (forestNorthAmericaRoll == 5)
				return("NewEngland_Skirmish");
			if (forestNorthAmericaRoll == 6)
				return("newengland_Skirmish");
			if (forestNorthAmericaRoll == 7)
				return("Ozarks_Skirmish");
			if (forestNorthAmericaRoll == 8)
				return("Dakota_Skirmish");
			if (forestNorthAmericaRoll == 9)
				return("GreatPlains_Skirmish");
			if (forestNorthAmericaRoll == 10)
				return("High_Plains_Skirmish");
			if (forestNorthAmericaRoll == 11)
				return("California_Skirmish");
			if (forestNorthAmericaRoll == 12)
				return("california");
			if (forestNorthAmericaRoll == 13)
				return("Mexico_Skirmish");
			if (forestNorthAmericaRoll == 14)
				return("mexico_Skirmish");
			if (forestNorthAmericaRoll == 15)
				return("Great Lakes");
			if (forestNorthAmericaRoll == 16)
				return("GreatLakes_Summer_Skirmish");
			if (forestNorthAmericaRoll == 17)
				return("GreatLakes_Summer_skirmish");
			return("nwterritory");
		}
	}
	if (biomeTheme == cbeBiomeJungle())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (jungleAfricaRoll == 1)
				return("rm_afri_pepperCoast");
			if (jungleAfricaRoll == 2)
				return("rm_afri_congoBasin");
			if (jungleAfricaRoll == 3)
				return("rm_afri_ivorycoast");
			if (jungleAfricaRoll == 4)
				return("rm_afri_sudd");
			if (jungleAfricaRoll == 5)
				return("rm_afri_swahiliCoast");
			if (jungleAfricaRoll == 6)
				return("rm_afri_horn");
			if (jungleAfricaRoll == 7)
				return("rm_afri_greatRift");
			return("rm_afri_lakeChad");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (jungleAsiaRoll == 1)
				return("borneo");
			if (jungleAsiaRoll == 2)
				return("Borneo");
			if (jungleAsiaRoll == 3)
				return("Borneo_Skirmish");
			if (jungleAsiaRoll == 4)
				return("borneo_skirmish");
			if (jungleAsiaRoll == 5)
				return("Indochina_Skirmish");
			if (jungleAsiaRoll == 6)
				return("Indonesia_Skirmish");
			if (jungleAsiaRoll == 7)
				return("Malaysia_Skirmish");
			if (jungleAsiaRoll == 8)
				return("Bengal_Skirmish");
			if (jungleAsiaRoll == 9)
				return("ceylon");
			if (jungleAsiaRoll == 10)
				return("ceylon_skirmish");
			if (jungleAsiaRoll == 11)
				return("deccan");
			if (jungleAsiaRoll == 12)
				return("deccan_skirmish");
			if (jungleAsiaRoll == 13)
				return("india_yic1a1");
			if (jungleAsiaRoll == 14)
				return("Punjab_Skirmish");
			return("punjab_skirmish");
		}
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (jungleSouthAmericaRoll == 1)
				return("amazon");
			if (jungleSouthAmericaRoll == 2)
				return("Amazonia_Skirmish");
			if (jungleSouthAmericaRoll == 3)
				return("Orinoco_Skirmish");
			if (jungleSouthAmericaRoll == 4)
				return("rm_guianas");
			if (jungleSouthAmericaRoll == 5)
				return("Yucatan_Skirmish");
			if (jungleSouthAmericaRoll == 6)
				return("Yucatan_skirmish");
			if (jungleSouthAmericaRoll == 7)
				return("yucatan");
			if (jungleSouthAmericaRoll == 8)
				return("Gran_Chaco_Skirmish");
			if (jungleSouthAmericaRoll == 9)
				return("rm_panama");
			if (jungleSouthAmericaRoll == 10)
				return("rm_bahia");
			if (jungleSouthAmericaRoll == 11)
				return("rm_Bahia");
			if (jungleSouthAmericaRoll == 12)
				return("rm_minasGerais");
			if (jungleSouthAmericaRoll == 13)
				return("NthAraucaniaLight");
			if (jungleSouthAmericaRoll == 14)
				return("SthAraucaniaLight");
			return("tenochtitlan_sunrise");
		}
	}
	if (biomeTheme == cbeBiomeDesert())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (desertAfricaRoll == 1)
				return("rm_afri_nileValley");
			if (desertAfricaRoll == 2)
				return("rm_afri_sahel");
			if (desertAfricaRoll == 3)
				return("rm_afri_lakeChad");
			if (desertAfricaRoll == 4)
				return("rm_afri_greatRift");
			if (desertAfricaRoll == 5)
				return("rm_afri_horn");
			if (desertAfricaRoll == 6)
				return("rm_afri_swahiliCoast");
			if (desertAfricaRoll == 7)
				return("rm_afri_ivorycoast");
			return("rm_afri_pepperCoast");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (desertAsiaRoll == 1)
				return("HimalayasUpper_skirmish");
			if (desertAsiaRoll == 2)
				return("Himalayas_skirmish");
			if (desertAsiaRoll == 3)
				return("himalayas");
			if (desertAsiaRoll == 4)
				return("Himalayas");
			if (desertAsiaRoll == 5)
				return("Punjab_Skirmish");
			if (desertAsiaRoll == 6)
				return("punjab_Skirmish");
			if (desertAsiaRoll == 7)
				return("punjab_skirmish");
			if (desertAsiaRoll == 8)
				return("Punjab_skirmish");
			if (desertAsiaRoll == 9)
				return("Fertile_Crescent_Skirmish");
			if (desertAsiaRoll == 10)
				return("fertile_crescent_skirmish");
			if (desertAsiaRoll == 11)
				return("ottoman morning");
			return("seville morning");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (desertNorthAmericaRoll == 1)
				return("Sonora_Skirmish");
			if (desertNorthAmericaRoll == 2)
				return("sonora_skirmish");
			if (desertNorthAmericaRoll == 3)
				return("sonora");
			if (desertNorthAmericaRoll == 4)
				return("Sonora");
			if (desertNorthAmericaRoll == 5)
				return("Baja_California_Skirmish");
			if (desertNorthAmericaRoll == 6)
				return("PaintedDesert_Skirmish");
			if (desertNorthAmericaRoll == 7)
				return("Texas_Skirmish");
			if (desertNorthAmericaRoll == 8)
				return("texas_skirmish");
			if (desertNorthAmericaRoll == 9)
				return("Texas");
			if (desertNorthAmericaRoll == 10)
				return("texas");
			if (desertNorthAmericaRoll == 11)
				return("California_Skirmish");
			if (desertNorthAmericaRoll == 12)
				return("california");
			return("Mexico_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomePlains())
	{
		if (regionFlavor == cbeRegionAfrica())
		{
			if (plainsAfricaRoll == 1)
				return("rm_afri_horn");
			if (plainsAfricaRoll == 2)
				return("rm_afri_lakeChad");
			if (plainsAfricaRoll == 3)
				return("rm_afri_swahiliCoast");
			if (plainsAfricaRoll == 4)
				return("rm_afri_sahel");
			if (plainsAfricaRoll == 5)
				return("rm_afri_greatRift");
			if (plainsAfricaRoll == 6)
				return("rm_afri_nileValley");
			if (plainsAfricaRoll == 7)
				return("rm_afri_pepperCoast");
			return("rm_afri_sudd");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (plainsAsiaRoll == 1)
				return("yellow_river_wet_skirmish");
			if (plainsAsiaRoll == 2)
				return("yellow_river_dry_skirmish");
			if (plainsAsiaRoll == 3)
				return("yellow_river_dry");
			if (plainsAsiaRoll == 4)
				return("Mongolia");
			if (plainsAsiaRoll == 5)
				return("mongolia");
			if (plainsAsiaRoll == 6)
				return("mongolia_skirmish");
			if (plainsAsiaRoll == 7)
				return("Mongolia_skirmish");
			if (plainsAsiaRoll == 8)
				return("Manchuria_Skirmish");
			if (plainsAsiaRoll == 9)
				return("Manchuria_skirmish");
			if (plainsAsiaRoll == 10)
				return("Punjab_Skirmish");
			if (plainsAsiaRoll == 11)
				return("punjab_skirmish");
			return("Korea_Skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (plainsEuropeRoll == 1)
				return("NewEngland_Skirmish");
			if (plainsEuropeRoll == 2)
				return("newengland_Skirmish");
			if (plainsEuropeRoll == 3)
				return("Pampas_Skirmish");
			if (plainsEuropeRoll == 4)
				return("Pampas");
			if (plainsEuropeRoll == 5)
				return("pampas");
			if (plainsEuropeRoll == 6)
				return("fertile_crescent_skirmish");
			if (plainsEuropeRoll == 7)
				return("Fertile_Crescent_Skirmish");
			if (plainsEuropeRoll == 8)
				return("Florida_Skirmish");
			if (plainsEuropeRoll == 9)
				return("GreatPlains_Skirmish");
			if (plainsEuropeRoll == 10)
				return("High_Plains_Skirmish");
			if (plainsEuropeRoll == 11)
				return("Dakota_Skirmish");
			if (plainsEuropeRoll == 12)
				return("Great Lakes");
			if (plainsEuropeRoll == 13)
				return("GreatLakes_Summer_Skirmish");
			return("ParallelRivers_Skirmish");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (plainsNorthAmericaRoll == 1)
				return("GreatPlains_Skirmish");
			if (plainsNorthAmericaRoll == 2)
				return("High_Plains_Skirmish");
			if (plainsNorthAmericaRoll == 3)
				return("Dakota_Skirmish");
			if (plainsNorthAmericaRoll == 4)
				return("Texas_Skirmish");
			if (plainsNorthAmericaRoll == 5)
				return("texas_skirmish");
			if (plainsNorthAmericaRoll == 6)
				return("Texas");
			if (plainsNorthAmericaRoll == 7)
				return("texas");
			if (plainsNorthAmericaRoll == 8)
				return("Mexico_Skirmish");
			if (plainsNorthAmericaRoll == 9)
				return("mexico_Skirmish");
			if (plainsNorthAmericaRoll == 10)
				return("California_Skirmish");
			if (plainsNorthAmericaRoll == 11)
				return("california");
			if (plainsNorthAmericaRoll == 12)
				return("colorado_skirmish");
			if (plainsNorthAmericaRoll == 13)
				return("GreatLakes_Summer_Skirmish");
			return("ParallelRivers_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomeMountain())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (mountainSouthAmericaRoll == 1)
				return("Andes_Skirmish");
			if (mountainSouthAmericaRoll == 2)
				return("Gran_Chaco_Skirmish");
			if (mountainSouthAmericaRoll == 3)
				return("Patagonia_skirmish");
			if (mountainSouthAmericaRoll == 4)
				return("Patagonia_Skirmish");
			if (mountainSouthAmericaRoll == 5)
				return("patagonia");
			if (mountainSouthAmericaRoll == 6)
				return("Araucania Central");
			if (mountainSouthAmericaRoll == 7)
				return("Araucania_CentralDesert_Skirmish");
			if (mountainSouthAmericaRoll == 8)
				return("Araucania_NorthGrass_Skirmish");
			if (mountainSouthAmericaRoll == 9)
				return("Araucania_SouthSnow_Skirmish");
			if (mountainSouthAmericaRoll == 10)
				return("Pampas_Sierras_Skirmish");
			if (mountainSouthAmericaRoll == 11)
				return("Pampas_Sierras_Winter");
			return("SthAraucaniaLight");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (mountainAsiaRoll == 1)
				return("HimalayasUpper_skirmish");
			if (mountainAsiaRoll == 2)
				return("Himalayas_skirmish");
			if (mountainAsiaRoll == 3)
				return("himalayas");
			if (mountainAsiaRoll == 4)
				return("Himalayas");
			if (mountainAsiaRoll == 5)
				return("Kamchatka_Skirmish");
			if (mountainAsiaRoll == 6)
				return("Kamchatka_Winter_Skirmish");
			if (mountainAsiaRoll == 7)
				return("Manchuria_Skirmish");
			if (mountainAsiaRoll == 8)
				return("Manchuria_skirmish");
			if (mountainAsiaRoll == 9)
				return("Mongolia");
			if (mountainAsiaRoll == 10)
				return("mongolia");
			if (mountainAsiaRoll == 11)
				return("mongolia_skirmish");
			if (mountainAsiaRoll == 12)
				return("Mongolia_skirmish");
			return("Punjab_Skirmish");
		}
		if (regionFlavor == cbeRegionEurope())
		{
			if (mountainEuropeRoll == 1)
				return("Cascade_Range_Skirmish");
			if (mountainEuropeRoll == 2)
				return("cascade_range_skirmish");
			if (mountainEuropeRoll == 3)
				return("Fertile_Crescent_Winter_Skirmish");
			if (mountainEuropeRoll == 4)
				return("Pampas_Sierras_Winter");
			if (mountainEuropeRoll == 5)
				return("GreatLakes_Winter_skirmish");
			if (mountainEuropeRoll == 6)
				return("GreatLakes_Winter_Skirmish");
			if (mountainEuropeRoll == 7)
				return("ArcticTerritories_Skirmish");
			if (mountainEuropeRoll == 8)
				return("ArcticTerritories_skirmish");
			if (mountainEuropeRoll == 9)
				return("Iceland");
			if (mountainEuropeRoll == 10)
				return("great lakes winter");
			if (mountainEuropeRoll == 11)
				return("Great Lakes Winter");
			return("WinterWonderLand");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (mountainNorthAmericaRoll == 1)
				return("Rockie_Skirmish");
			if (mountainNorthAmericaRoll == 2)
				return("rockie_skirmish");
			if (mountainNorthAmericaRoll == 3)
				return("rockies");
			if (mountainNorthAmericaRoll == 4)
				return("Cascade_Range_Skirmish");
			if (mountainNorthAmericaRoll == 5)
				return("cascade_range_skirmish");
			if (mountainNorthAmericaRoll == 6)
				return("colorado_skirmish");
			if (mountainNorthAmericaRoll == 7)
				return("NorthwestTerritory_Skirmish");
			if (mountainNorthAmericaRoll == 8)
				return("nwterritory");
			if (mountainNorthAmericaRoll == 9)
				return("Yukon_Skirmish");
			if (mountainNorthAmericaRoll == 10)
				return("yukon_skirmish");
			if (mountainNorthAmericaRoll == 11)
				return("yukon");
			if (mountainNorthAmericaRoll == 12)
				return("Alaska_Skirmish");
			if (mountainNorthAmericaRoll == 13)
				return("ArcticTerritories_Skirmish");
			return("Saguenay_Winter_Skirmish");
		}
	}
	if (biomeTheme == cbeBiomeWetlandIsland())
	{
		if (regionFlavor == cbeRegionSouthAmerica())
		{
			if (wetlandSouthAmericaRoll == 1)
				return("Amazonia_Skirmish");
			if (wetlandSouthAmericaRoll == 2)
				return("Orinoco_Skirmish");
			if (wetlandSouthAmericaRoll == 3)
				return("rm_panama");
			if (wetlandSouthAmericaRoll == 4)
				return("rm_bahia");
			if (wetlandSouthAmericaRoll == 5)
				return("rm_Bahia");
			if (wetlandSouthAmericaRoll == 6)
				return("rm_minasGerais");
			if (wetlandSouthAmericaRoll == 7)
				return("Yucatan_Skirmish");
			if (wetlandSouthAmericaRoll == 8)
				return("Yucatan_skirmish");
			if (wetlandSouthAmericaRoll == 9)
				return("yucatan");
			if (wetlandSouthAmericaRoll == 10)
				return("caribbean");
			if (wetlandSouthAmericaRoll == 11)
				return("Caribbean_Skirmish");
			if (wetlandSouthAmericaRoll == 12)
				return("caribbean_skirmish");
			if (wetlandSouthAmericaRoll == 13)
				return("Hispaniola_Skirmish");
			if (wetlandSouthAmericaRoll == 14)
				return("carribean");
			return("Bayou_Skirmish");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (wetlandAsiaRoll == 1)
				return("Bengal_Skirmish");
			if (wetlandAsiaRoll == 2)
				return("Malaysia_Skirmish");
			if (wetlandAsiaRoll == 3)
				return("Indochina_Skirmish");
			if (wetlandAsiaRoll == 4)
				return("Indonesia_Skirmish");
			if (wetlandAsiaRoll == 5)
				return("borneo");
			if (wetlandAsiaRoll == 6)
				return("Borneo");
			if (wetlandAsiaRoll == 7)
				return("Borneo_Skirmish");
			if (wetlandAsiaRoll == 8)
				return("borneo_skirmish");
			if (wetlandAsiaRoll == 9)
				return("ceylon");
			if (wetlandAsiaRoll == 10)
				return("ceylon_skirmish");
			if (wetlandAsiaRoll == 11)
				return("deccan");
			if (wetlandAsiaRoll == 12)
				return("deccan_skirmish");
			return("india_yic1a1");
		}
		if (regionFlavor == cbeRegionIsland())
		{
			if (wetlandIslandRoll == 1)
				return("Caribbean_Skirmish");
			if (wetlandIslandRoll == 2)
				return("caribbean_skirmish");
			if (wetlandIslandRoll == 3)
				return("caribbean");
			if (wetlandIslandRoll == 4)
				return("carribean");
			if (wetlandIslandRoll == 5)
				return("Hispaniola_Skirmish");
			if (wetlandIslandRoll == 6)
				return("Florida_Skirmish");
			if (wetlandIslandRoll == 7)
				return("florida_Skirmish");
			if (wetlandIslandRoll == 8)
				return("Bayou_Skirmish");
			if (wetlandIslandRoll == 9)
				return("bayou");
			if (wetlandIslandRoll == 10)
				return("Bayou");
			if (wetlandIslandRoll == 11)
				return("age304_caribbean");
			if (wetlandIslandRoll == 12)
				return("306a_caribbean");
			return("307a_beach");
		}
	}
	if (biomeTheme == cbeBiomeColdNorth())
	{
		if (regionFlavor == cbeRegionEurope())
		{
			if (coldEuropeRoll == 1)
				return("ArcticTerritories_Skirmish");
			if (coldEuropeRoll == 2)
				return("ArcticTerritories_skirmish");
			if (coldEuropeRoll == 3)
				return("Iceland");
			if (coldEuropeRoll == 4)
				return("GreatLakes_Winter_skirmish");
			if (coldEuropeRoll == 5)
				return("GreatLakes_Winter_Skirmish");
			if (coldEuropeRoll == 6)
				return("great lakes winter");
			if (coldEuropeRoll == 7)
				return("Great Lakes Winter");
			if (coldEuropeRoll == 8)
				return("Cascade_Range_Skirmish");
			if (coldEuropeRoll == 9)
				return("Fertile_Crescent_Winter_Skirmish");
			if (coldEuropeRoll == 10)
				return("Pampas_Sierras_Winter");
			if (coldEuropeRoll == 11)
				return("WinterWonderLand");
			return("319a_snow");
		}
		if (regionFlavor == cbeRegionAsia())
		{
			if (coldAsiaRoll == 1)
				return("siberia_skirmish");
			if (coldAsiaRoll == 2)
				return("Kamchatka_Winter_Skirmish");
			if (coldAsiaRoll == 3)
				return("Kamchatka_Skirmish");
			if (coldAsiaRoll == 4)
				return("ArcticTerritories_Skirmish");
			if (coldAsiaRoll == 5)
				return("ArcticTerritories_skirmish");
			if (coldAsiaRoll == 6)
				return("Hokkaido_Skirmish");
			if (coldAsiaRoll == 7)
				return("Hokkaido_skirmish");
			if (coldAsiaRoll == 8)
				return("Alaska_Skirmish");
			return("319a_snow");
		}
		if (regionFlavor == cbeRegionNorthAmerica())
		{
			if (coldNorthAmericaRoll == 1)
				return("Yukon_Skirmish");
			if (coldNorthAmericaRoll == 2)
				return("yukon_skirmish");
			if (coldNorthAmericaRoll == 3)
				return("yukon");
			if (coldNorthAmericaRoll == 4)
				return("Alaska_Skirmish");
			if (coldNorthAmericaRoll == 5)
				return("ArcticTerritories_Skirmish");
			if (coldNorthAmericaRoll == 6)
				return("ArcticTerritories_skirmish");
			if (coldNorthAmericaRoll == 7)
				return("GreatLakes_Winter_skirmish");
			if (coldNorthAmericaRoll == 8)
				return("GreatLakes_Winter_Skirmish");
			if (coldNorthAmericaRoll == 9)
				return("Saguenay_Winter_Skirmish");
			if (coldNorthAmericaRoll == 10)
				return("NorthwestTerritory_Skirmish");
			if (coldNorthAmericaRoll == 11)
				return("nwterritory");
			if (coldNorthAmericaRoll == 12)
				return("Cascade_Range_Skirmish");
			if (coldNorthAmericaRoll == 13)
				return("WinterWonderLand");
			return("319a_snow");
		}
	}
	return("Carolina_Skirmish");
}

// ================================================================
// Map Types
// ================================================================

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

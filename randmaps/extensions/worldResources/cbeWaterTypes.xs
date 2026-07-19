// CBE Water Types

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

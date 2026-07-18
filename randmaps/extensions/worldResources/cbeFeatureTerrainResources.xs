// CBE Feature Terrain Resources

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


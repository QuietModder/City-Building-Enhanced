// CBE Map Size Setter

// ================================================================
// Map Size Values
// ================================================================

float cbeGetMapScale(void)
{
	return(6.0);
}

// ================================================================
// Player Tile Curve
// ================================================================

int cbeGetPlayerTiles(int PlayerNum = 2)
{
	int playerTiles = 12500;
	if (rmGetIsTreaty() == true)
	{
		if (PlayerNum == 2)
			playerTiles = 16000;
		if (PlayerNum > 2)
			playerTiles = 13000;
		if (PlayerNum > 4)
			playerTiles = 10500;
		if (PlayerNum > 6)
			playerTiles = 8500;
	}
	else
	{
		if (PlayerNum == 2)
			playerTiles = 14000;
		if (PlayerNum > 2)
			playerTiles = 11000;
		if (PlayerNum > 4)
			playerTiles = 9000;
		if (PlayerNum > 6)
			playerTiles = 7200;
	}

	return(playerTiles);
}

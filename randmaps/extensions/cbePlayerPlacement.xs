// CBE Player Placement

// ================================================================
// Player Placement
// ================================================================

void cbePlacePlayers(int TeamNum = 2, int PlayerNum = 2)
{
	int teamID = 0;
	float cbePlayerRingInner = 0.45;
	float cbePlayerRingOuter = 0.45;
	float cbeTeamSpacing = 0.20;

	if (PlayerNum <= 2)
	{
		cbePlayerRingInner = 0.46;
		cbePlayerRingOuter = 0.46;
		cbeTeamSpacing = 0.15;
	}

	if (TeamNum == 2)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		if (PlayerNum <= 2)
			rmSetPlacementSection(0.12, 0.14);
		else
			rmSetPlacementSection(0.10, 0.16);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		if (PlayerNum <= 2)
			rmSetPlacementSection(0.62, 0.64);
		else
			rmSetPlacementSection(0.60, 0.66);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else if (TeamNum == 3)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		rmSetPlacementSection(0.08, 0.16);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		rmSetPlacementSection(0.41, 0.49);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(2);
		rmSetPlacementSection(0.74, 0.82);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else if (TeamNum == 4)
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		rmSetPlacementTeam(0);
		rmSetPlacementSection(0.975, 0.025);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(1);
		rmSetPlacementSection(0.225, 0.275);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(2);
		rmSetPlacementSection(0.475, 0.525);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);

		rmSetPlacementTeam(3);
		rmSetPlacementSection(0.725, 0.775);
		rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
	}
	else
	{
		rmSetTeamSpacingModifier(cbeTeamSpacing);

		if (TeamNum > 2)
		{
			float cbeTeamArc = 0.35 / TeamNum;
			for (teamID = 0; < TeamNum)
			{
				float cbeTeamCenter = 0.05 + (teamID * (1.0 / TeamNum));
				float cbeTeamStart = cbeTeamCenter - (cbeTeamArc * 0.50);
				float cbeTeamEnd = cbeTeamCenter + (cbeTeamArc * 0.50);
				if (cbeTeamStart < 0.0)
					cbeTeamStart = cbeTeamStart + 1.0;
				if (cbeTeamEnd > 1.0)
					cbeTeamEnd = cbeTeamEnd - 1.0;

				rmSetPlacementTeam(teamID);
				rmSetPlacementSection(cbeTeamStart, cbeTeamEnd);
				rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
			}
		}
		else
		{
			rmPlacePlayersCircular(cbePlayerRingInner, cbePlayerRingOuter, 0.0);
		}
	}
}

// ================================================================
// Player Areas
// ================================================================

void cbeCreatePlayerAreas(int numPlayer = 2)
{
	int i = 0;

	for (i = 1; < numPlayer)
	{
		int playerAreaID = rmCreateArea("player area "+i);
		rmSetPlayerArea(i, playerAreaID);
		rmSetAreaSize(playerAreaID, 0.03, 0.03);
		rmSetAreaCoherence(playerAreaID, 1.0);
		rmSetAreaWarnFailure(playerAreaID, false);
		rmSetAreaLocPlayer(playerAreaID, i);
		rmSetAreaObeyWorldCircleConstraint(playerAreaID, false);
		rmBuildArea(playerAreaID);
	}
}

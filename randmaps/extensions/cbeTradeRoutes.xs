// ================================================================
// Route Relationship Values
// ================================================================

int cbeRouteRiverNone(void)
{
	return(0);
}

int cbeRouteRiverParallelOffset(void)
{
	return(2);
}

int cbeRouteMesaNone(void)
{
	return(0);
}

int cbeRouteMesaCutsPass(void)
{
	return(1);
}

int cbeRouteMesaSkirts(void)
{
	return(2);
}

void cbePlaceTradeRoute(int cbeRouteRiverRelationship = 0, int cbeRouteMesaRelationship = 0, int classSocket = -1)
{
	int cbeTradeRouteID = rmCreateTradeRoute();
	int cbeSocketID = rmCreateObjectDef("cbe trade route sockets");
	rmAddObjectDefItem(cbeSocketID, "SocketTradeRoute", 1, 0.0);
	rmSetObjectDefAllowOverlap(cbeSocketID, true);
	rmAddObjectDefToClass(cbeSocketID, classSocket);
	rmSetObjectDefMinDistance(cbeSocketID, 2.0);
	rmSetObjectDefMaxDistance(cbeSocketID, 8.0);
	rmSetObjectDefTradeRouteID(cbeSocketID, cbeTradeRouteID);

	int cbeTradeRouteHorizontal = 1;
	int cbeTradeRouteDiagonalUp = 2;
	int cbeTradeRouteDiagonalDown = 3;
	int cbeTradeRouteVertical = 4;

	int cbeTradeRouteShape = rmRandInt(1, 4);
	float cbeRouteOffset = 0.38;
	if (cbeRouteRiverRelationship == cbeRouteRiverParallelOffset())
	{
		if (rmRandInt(1, 2) == 1)
			cbeTradeRouteShape = cbeTradeRouteHorizontal;
		else
			cbeTradeRouteShape = cbeTradeRouteVertical;
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaCutsPass())
	{
		cbeTradeRouteShape = rmRandInt(1, 4);
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaSkirts())
	{
		if (rmRandInt(1, 2) == 1)
			cbeTradeRouteShape = cbeTradeRouteDiagonalUp;
		else
			cbeTradeRouteShape = cbeTradeRouteDiagonalDown;
	}

	rmEchoInfo("CBE Trade Route Shape = "+cbeTradeRouteShape);

	if (cbeRouteMesaRelationship == cbeRouteMesaCutsPass())
	{
		if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.30, 0.47, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.70, 0.53, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, 0.50);
		}
		else if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.34, 0.36, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.66, 0.64, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
		}
		else if (cbeTradeRouteShape == cbeTradeRouteDiagonalDown)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.34, 0.64, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.66, 0.36, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.05);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.47, 0.30, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.50);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.53, 0.70, 3, 4);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.95);
		}
	}
	else if (cbeRouteRiverRelationship == cbeRouteRiverParallelOffset())
	{
		cbeRouteOffset = 0.38;
		if (rmRandInt(1, 2) == 1)
			cbeRouteOffset = 0.62;

		if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, cbeRouteOffset);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, cbeRouteOffset, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, cbeRouteOffset, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, cbeRouteOffset);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, cbeRouteOffset, 0.05);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, cbeRouteOffset, 0.35, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, cbeRouteOffset, 0.65, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, cbeRouteOffset, 0.95);
		}
	}
	else if (cbeRouteMesaRelationship == cbeRouteMesaSkirts())
	{
		if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.30, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.70, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
		}
		else
		{
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.70, 4, 6);
			rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.30, 4, 6);
			rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
		}
	}
	else if (cbeTradeRouteShape == cbeTradeRouteHorizontal)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.05, 0.50);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.35, 0.48, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.65, 0.52, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.95, 0.50);
	}
	else if (cbeTradeRouteShape == cbeTradeRouteDiagonalUp)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.18);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.38, 0.38, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.62, 0.62, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.82);
	}
	else if (cbeTradeRouteShape == cbeTradeRouteDiagonalDown)
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.12, 0.82);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.38, 0.62, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.62, 0.38, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.88, 0.18);
	}
	else
	{
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.05);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.48, 0.35, 4, 6);
		rmAddRandomTradeRouteWaypoints(cbeTradeRouteID, 0.52, 0.65, 4, 6);
		rmAddTradeRouteWaypoint(cbeTradeRouteID, 0.50, 0.95);
	}

	bool cbeTradeRoutePlaced = rmBuildTradeRoute(cbeTradeRouteID, "dirt_trail");
	if (cbeTradeRoutePlaced == false)
		rmEchoError("CBE failed to place trade route");

	vector cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.10);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.30);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.50);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.70);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
	cbeSocketLoc = rmGetTradeRouteWayPoint(cbeTradeRouteID, 0.90);
	rmPlaceObjectDefAtPoint(cbeSocketID, 0, cbeSocketLoc);
}

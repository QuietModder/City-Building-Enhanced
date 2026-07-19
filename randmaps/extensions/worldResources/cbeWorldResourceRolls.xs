// CBE World Resource Rolls

int cbeResolveWorldResourceRoll(int storedRoll = 0, int maxRoll = 1)
{
	if (maxRoll < 1)
		return(1);
	if (storedRoll > 0)
		return((storedRoll - 1) % maxRoll + 1);
	return(rmRandInt(1, maxRoll));
}

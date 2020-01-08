SELECT victims.name AS victim, zombies.name AS zombie, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON zombies.id = bitings.zombie_id;

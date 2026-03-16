function player_damage(normal, critical){
	critChance = 15;
	
	chance = random_range(0, 100);
	
	if (chance <= critChance) return critical;
	else return normal;
}
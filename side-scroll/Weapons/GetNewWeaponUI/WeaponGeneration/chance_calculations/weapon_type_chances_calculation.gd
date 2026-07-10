extends Node
class_name WeaponTypeChancesCalculation

var rarity_chance_weight:Dictionary = {
	GunPatternWeaponData:1.0,
	LazerBlasterWeaponData:1.0
}

func get_random_weapon_type() -> WeaponData:
	var total_weight :float= 0.0
	for weight in rarity_chance_weight.values():
		total_weight += weight
	
	var roll :float= randf() * total_weight
	var cumulative :float = 0.0
	
	for weapon_data_type in rarity_chance_weight.keys():
		cumulative += rarity_chance_weight[weapon_data_type]
		if roll <= cumulative:
			return weapon_data_type.new()
	
	return null

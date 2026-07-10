extends Node
class_name RarityChancesCalculation



@export var rarity_chance_weight:Dictionary = {
	WeaponData.Rarity.COMMON:5.0,
	WeaponData.Rarity.UNCOMMON:3.0,
	WeaponData.Rarity.RARE:1.0
}

func get_random_rarity() -> WeaponData.Rarity:
	var total_weight :float= 0.0
	for weight in rarity_chance_weight.values():
		total_weight += weight
	
	var roll :float= randf() * total_weight
	var cumulative :float = 0.0
	
	for rarity in rarity_chance_weight.keys():
		cumulative += rarity_chance_weight[rarity]
		if roll <= cumulative:
			return rarity
	
	return WeaponData.Rarity.COMMON

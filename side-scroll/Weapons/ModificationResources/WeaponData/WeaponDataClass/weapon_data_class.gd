extends Resource
class_name WeaponData

@export var weapon_name:String
enum Rarity {
	COMMON,
	UNCOMMON,
	RARE
}
var rarity_modifier:Dictionary = {
	Rarity.COMMON:1.0,
	Rarity.UNCOMMON:2.0,
	Rarity.RARE:3.0
}
@export var current_rarity:Rarity
func apply_xp_for_all_stats(current_xp:float):
	pass #override with all StatModifiers

extends Resource
class_name WeaponData

@export var weapon_name:String
enum Rarity {
	COMMON,
	UNCOMMON,
	RARE
}
@export var current_rarity:Rarity
func apply_xp_for_all_stats(current_xp:float):
	pass #override with all StatModifiers

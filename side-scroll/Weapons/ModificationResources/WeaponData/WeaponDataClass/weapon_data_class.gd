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

var all_stat_modifiers:Array[StatModifier]

@export var current_rarity:Rarity
func apply_xp_for_all_stats(current_xp:float):
	for stat in all_stat_modifiers:
		stat.initialize_roll(current_xp,rarity_modifier[current_rarity])
func make_ui_stat_list():
	pass

func initialize_weapon_data():
	
	
	for property in get_property_list():
		var name:String = property.name
		var value = get(name)
		
		if value is StatModifier:
			value.ui_name = name
			all_stat_modifiers.append(value)

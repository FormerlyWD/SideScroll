extends Node
class_name WeaponGeneration
@export var all_generation_count:int
var currently_generated_weapon_array:Array[WeaponData]



func generate_weapons():
	for new_weapon in all_generation_count:
		var new_weapon_data:GunPatternWeaponData = GunPatternWeaponData.new()
		new_weapon_data.apply_xp_for_all_stats(0)
		currently_generated_weapon_array.append(new_weapon_data)
		
	

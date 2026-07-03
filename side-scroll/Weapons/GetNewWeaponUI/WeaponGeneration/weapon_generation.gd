extends Node
class_name WeaponGeneration
@export var all_generation_count:int
var currently_generated_weapon_array:Array[WeaponData]
@export var rarity_chances_calculation: RarityChancesCalculation



func generate_weapons():
	for new_weapon in all_generation_count:
		var new_weapon_data:GunPatternWeaponData = GunPatternWeaponData.new()
		new_weapon_data.current_rarity = rarity_chances_calculation.get_random_rarity()
		new_weapon_data.initialize_weapon_data()
		new_weapon_data.apply_xp_for_all_stats(References.char_reference.player_stat_component.current_xp)
		currently_generated_weapon_array.append(new_weapon_data)
		
	
 

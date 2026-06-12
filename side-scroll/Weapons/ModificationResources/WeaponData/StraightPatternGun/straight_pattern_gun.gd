extends WeaponData
class_name StraightPatternGunWeaponData



@export var projectile_speed:StatModifier = StatModifier.new()
@export var projectile_damage:StatModifier= StatModifier.new()
func apply_xp_for_all_stats(current_xp:float):
	projectile_speed.initialize_roll(current_xp,rarity_modifier[current_rarity])
	projectile_damage.initialize_roll(current_xp,rarity_modifier[current_rarity])
	

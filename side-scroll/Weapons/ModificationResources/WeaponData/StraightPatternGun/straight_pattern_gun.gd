extends WeaponData
class_name GunPatternWeaponData



@export var projectile_speed:StatModifier = StatModifier.new()
@export var projectile_damage:StatModifier= StatModifier.new()

		


	
func _init() -> void:
	weapon_name = "gun"

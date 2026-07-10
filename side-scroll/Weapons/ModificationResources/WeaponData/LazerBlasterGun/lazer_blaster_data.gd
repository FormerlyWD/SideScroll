extends WeaponData
class_name LazerBlasterWeaponData


@export var area_proc_speed:StatModifier = StatModifier.new()
@export var area_proc_cooldown:StatModifier = StatModifier.new()
@export var area_damage:StatModifier= StatModifier.new()


func _init() -> void:
	weapon_name = "blaster"

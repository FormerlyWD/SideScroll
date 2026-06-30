extends Control
class_name MainWeaponUiBus
@export var weapon_stat_ui: weaponStatUi
@export var weapon_generation: WeaponGeneration


func _ready() -> void:
	weapon_generation.generate_weapons()
	weapon_stat_ui.bind_children_to_id()
	weapon_stat_ui.bind_children_to_signal()
	

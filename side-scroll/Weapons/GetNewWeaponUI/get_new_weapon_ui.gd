extends Control
class_name MainWeaponUiBus
enum UiState {
	ACTIVE,
	NONACTIVE
}
@export var weapon_stat_ui: weaponStatUi
@export var weapon_generation: WeaponGeneration


func _ready() -> void:
	References.weapon_ui = self
	weapon_stat_ui.bind_children_to_id()
	weapon_stat_ui.bind_children_to_signal()
	
func activate():
	visible = true
	weapon_generation.generate_weapons()

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
	weapon_stat_ui.new_weapon_chosen.connect(on_weapon_chosen)
	weapon_stat_ui.bind_children_to_id()
	weapon_stat_ui.bind_children_to_signal()
func on_weapon_chosen(weapon_data:WeaponData):
	References.char_reference.weapon_behavior_spawner.insert(weapon_data)
	deactivate()
func activate():
	
	References.char_reference.central_movement_component.switch_to_reverse_movement_state()
	visible = true
	weapon_generation.generate_weapons()
	
func deactivate():
	
	References.char_reference.central_movement_component.switch_to_reverse_movement_state()
	visible = false
	

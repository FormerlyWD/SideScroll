extends Control
class_name WeaponDescriptionPanel
@export var stats_modification_describer: StatsModificationDescriber

signal pressed
var id:int = -1


func _on_confirm_take_button_pressed() -> void:
	pressed.emit()
func describe_weapon(weapon_data:WeaponData) -> void:
	for stat in weapon_data.all_stat_modifiers:
		stats_modification_describer.add_stat_modifier(stat)

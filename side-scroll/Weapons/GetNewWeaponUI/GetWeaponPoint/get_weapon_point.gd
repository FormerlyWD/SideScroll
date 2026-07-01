extends Area2D
class_name GetWeaponPoint


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		References.char_reference.central_movement_component.switch_to_reverse_movement_state()
		References.weapon_ui.activate()

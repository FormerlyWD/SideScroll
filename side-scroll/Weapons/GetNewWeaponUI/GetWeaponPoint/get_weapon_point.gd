extends Area2D
class_name GetWeaponPoint


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		
		References.weapon_ui.activate()
	

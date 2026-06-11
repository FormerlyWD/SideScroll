extends Unit
class_name Player
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta: float) -> void:
	position.x +=delta
	if not is_on_floor():
		velocity.y += gravity * delta
		
	move_and_slide()

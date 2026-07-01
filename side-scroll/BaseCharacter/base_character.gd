extends Unit
class_name Player
@export var central_movement_component: CentralMovementComponent

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready() -> void:
	References.char_reference = self
	

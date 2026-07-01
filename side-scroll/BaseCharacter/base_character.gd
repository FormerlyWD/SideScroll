extends Unit
class_name Player
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready() -> void:
	References.char_reference = self
	

extends Node2D
class_name SideScrollingComponent

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var unit:CharacterBody2D
@export var movement_speed:float
func _physics_process(delta: float) -> void:
	unit.position.x +=delta*movement_speed
	if not unit.is_on_floor():
		unit.velocity.y += gravity * delta
		
	unit.move_and_slide()

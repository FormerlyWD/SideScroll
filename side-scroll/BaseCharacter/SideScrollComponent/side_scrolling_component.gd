extends Node2D
class_name SideScrollingComponent

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var central_movement_component:CentralMovementComponent
@export var movement_speed:float:
	set(value):
		if central_movement_component:
			central_movement_component.set_vector("sidescrolling", Vector2(value,0))
func _ready() -> void:
	if central_movement_component:
		central_movement_component.set_vector("sidescrolling", Vector2(movement_speed,0))

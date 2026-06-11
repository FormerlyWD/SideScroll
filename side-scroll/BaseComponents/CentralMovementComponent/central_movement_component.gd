extends Node
class_name CentralMovementComponent
@export var unit:CharacterBody2D
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var is_gravity_enabled:bool = true
@export var movement_vectors: Dictionary = {}

func set_vector(component_name: String, vector: Vector2) -> void:
	movement_vectors[component_name] = vector

func remove_vector(component_name: String) -> void:
	movement_vectors.erase(component_name)
	
func _physics_process(delta: float) -> void:
	if not unit: 
		return
	var final_velocity :Vector2= Vector2.ZERO
	

	for component_vector in movement_vectors.values():
		final_velocity += component_vector
		
	
	if not unit.is_on_floor():
		if is_gravity_enabled: 
			unit.velocity.y += gravity * delta
	elif final_velocity.y >= 0:

		unit.velocity.y = 0
		

	unit.velocity.x = final_velocity.x
	if final_velocity.y != 0:
		unit.velocity.y = final_velocity.y
		
	unit.move_and_slide()

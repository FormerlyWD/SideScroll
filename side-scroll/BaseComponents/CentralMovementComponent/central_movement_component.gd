extends Node
class_name CentralMovementComponent
@export var unit:CharacterBody2D


enum MoveState {
	ACCEPTED,
	BLOCKED
}
@export var current_move_state:MoveState = MoveState.ACCEPTED
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var is_gravity_enabled:bool = true
@export var movement_vectors: Dictionary = {}
@export var vertical_air_velocity :float = 0.0
func set_vector(component_name: String, vector: Vector2) -> void:
	if vector == Vector2.ZERO: remove_vector(component_name)
	movement_vectors[component_name] = vector

func remove_vector(component_name: String) -> void:
	movement_vectors.erase(component_name)

func switch_movement_state(new_move_state:MoveState):
	current_move_state = new_move_state
func switch_to_reverse_movement_state():
		if current_move_state== MoveState.BLOCKED:
			switch_movement_state(MoveState.ACCEPTED)
		elif current_move_state== MoveState.ACCEPTED:
			switch_movement_state(MoveState.BLOCKED)
func _physics_process(delta: float) -> void:
	if not unit: 
		return
	if current_move_state == MoveState.BLOCKED:
		return
	
	var final_velocity :Vector2= Vector2.ZERO
	
	
	for component_vector in movement_vectors.values():
		final_velocity += component_vector
	
	if not unit.is_on_floor():
		if is_gravity_enabled: 
			vertical_air_velocity += gravity * delta
	else:
		if final_velocity.y > 0:
			final_velocity.y = 0
		
	final_velocity.y += vertical_air_velocity
	unit.velocity = final_velocity
		
	unit.move_and_slide()

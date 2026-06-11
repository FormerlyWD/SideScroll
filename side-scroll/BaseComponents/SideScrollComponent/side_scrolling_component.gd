extends Node
class_name SideScrollingComponent
enum MoveState {
	ACCEPTED,
	BLOCKED
}
@export var current_move_state:MoveState = MoveState.ACCEPTED
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var central_movement_component:CentralMovementComponent
@export var movement_speed:float:
	set(value):
		movement_speed = value
		if central_movement_component:
			central_movement_component.set_vector("sidescrolling", Vector2(value,0))
func _ready() -> void:
	if central_movement_component:
		move()
			
		
func switch_movement_state(new_move_state:MoveState):
	current_move_state = new_move_state
	move()
func move():
		if current_move_state == MoveState.ACCEPTED:
			central_movement_component.set_vector("sidescrolling", Vector2(movement_speed,0))
		elif current_move_state == MoveState.BLOCKED:
			central_movement_component.remove_vector("sidescrolling")

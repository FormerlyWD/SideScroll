extends Node
class_name PlayerInputLogComponent

@export var side_scrolling_component: SideScrollingComponent



func _input(event: InputEvent) -> void:
	pass
	if event.is_action_pressed("Halt"):
		if side_scrolling_component.current_move_state== SideScrollingComponent.MoveState.BLOCKED:
			side_scrolling_component.switch_movement_state(SideScrollingComponent.MoveState.ACCEPTED)
		elif side_scrolling_component.current_move_state== SideScrollingComponent.MoveState.ACCEPTED:
			side_scrolling_component.switch_movement_state(SideScrollingComponent.MoveState.BLOCKED)
		

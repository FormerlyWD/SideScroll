extends Node
class_name PlayerInputLogComponent

@export var side_scrolling_component: SideScrollingComponent



func _input(event: InputEvent) -> void:
	pass
	if event.is_action_pressed("Halt"):
		print("what.")
		

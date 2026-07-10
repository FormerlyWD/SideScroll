extends Node
class_name PlayerInputLogComponent

@export var side_scrolling_component: SideScrollingComponent
@export var central_movement_component: CentralMovementComponent
@export var weapon_behavior_spawner: WeaponBehaviorSpawner

func _input(event: InputEvent) -> void:
	pass
	if event.is_action_pressed("Halt"):
		
		
		
		weapon_behavior_spawner.current_behavior_slot.activate_weapon()
		
		central_movement_component.switch_to_reverse_movement_state()
	if event.is_action_released("Halt"):
		central_movement_component.switch_to_reverse_movement_state()
	if event.is_action_pressed("Jump"):
		var character_body = central_movement_component.unit
		if character_body and character_body.is_on_floor():
			central_movement_component.vertical_air_velocity = -500

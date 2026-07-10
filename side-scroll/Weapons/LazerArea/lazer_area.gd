extends Area2D
@export var hp_depletion_machine_component: HpDepletionMachineComponent
var is_player_entered:bool = false

func _on_body_entered(body: Node2D) -> void:
	if body is Enemy:
		is_player_entered = true
		hp_depletion_machine_component.all_afflicted_units.append(body)
		hp_depletion_machine_component.current_machine_state = HpDepletionMachineComponent.MachineState.ON
		


func _on_body_exited(body: Node2D) -> void:
	if body is Enemy:
		is_player_entered = false
		hp_depletion_machine_component.all_afflicted_units.clear()
		hp_depletion_machine_component.current_machine_state = HpDepletionMachineComponent.MachineState.OFF
		

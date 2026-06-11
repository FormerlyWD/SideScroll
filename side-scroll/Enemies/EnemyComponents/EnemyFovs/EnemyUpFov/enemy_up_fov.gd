extends EnemyFov
class_name EnemyUpFov

@export var hp_depletion_machine:HpDepletionMachineComponent




func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		player_entered.emit()
		is_player_entered = true
		hp_depletion_machine.all_afflicted_units.clear()
		hp_depletion_machine.all_afflicted_units.append(body)
		hp_depletion_machine.current_machine_state = HpDepletionMachineComponent.MachineState.ON
		


func _on_body_exited(body: Node2D) -> void:
	if body is Player:
		player_exited.emit()
		is_player_entered = false
		hp_depletion_machine.all_afflicted_units.clear()
		hp_depletion_machine.current_machine_state = HpDepletionMachineComponent.MachineState.OFF

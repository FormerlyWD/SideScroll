extends Node
class_name HpDepletionMachineComponent
enum MachineState {
	ON,
	OFF
}
@onready var current_machine_state:MachineState
@onready var all_afflicted_units:Array[Unit]
@export var cooldown:float
@export var machine_speed:float
var current_timer:=0.0

func _process(delta: float) -> void:
	if current_machine_state == MachineState.OFF: return
	current_timer += delta*machine_speed
	if current_timer >= cooldown:
		for afflicted_unit in all_afflicted_units:
			afflicted_unit.hp_manager_component.deplete_health(2)
			
		current_timer = 0
		

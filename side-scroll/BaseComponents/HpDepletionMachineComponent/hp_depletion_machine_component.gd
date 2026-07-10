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

@export var optional_lazer_weapon_data:LazerBlasterWeaponData
var current_timer:=0.0

func _process(delta: float) -> void:
	if current_machine_state == MachineState.OFF: return
	if optional_lazer_weapon_data:
		current_timer += delta*optional_lazer_weapon_data.area_proc_speed.final_value
		if current_timer >= optional_lazer_weapon_data.area_proc_cooldown.final_value:
			for afflicted_unit in all_afflicted_units:
				afflicted_unit.hp_manager_component.deplete_health(optional_lazer_weapon_data.area_damage.final_value)
				
			current_timer = 0
	else:
		current_timer += delta*machine_speed
		if current_timer >= cooldown:
			for afflicted_unit in all_afflicted_units:
				afflicted_unit.hp_manager_component.deplete_health(2)
				
			current_timer = 0
		

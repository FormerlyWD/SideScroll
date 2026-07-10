extends WeaponBehavior
class_name LazerBlasterBehavior
@export var hp_depletion_machine_component: HpDepletionMachineComponent



func activate_weapon():
	pass
func on_weapon_ready():
	hp_depletion_machine_component.optional_lazer_weapon_data = weapon_data as LazerBlasterWeaponData
	

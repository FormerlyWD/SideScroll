extends Node2D
class_name WeaponBehaviorSpawner
@export var stat_component:StatComponent
@onready var current_behavior_slot:WeaponBehavior


func _ready() -> void:
	insert(load("res://Weapons/ModificationResources/WeaponData/AllResources/normal_gun.tres"))
func insert(weapon_data:WeaponData) -> void:
	if current_behavior_slot:
		current_behavior_slot.queue_free()
		current_behavior_slot = null
	weapon_data.apply_xp_for_all_stats(stat_component.current_xp)
	
	var new_behavior:WeaponBehavior
	
	if weapon_data is GunPatternWeaponData:
		new_behavior= WeaponManager.normal_gun_behavior_packed_scene.instantiate()
		var specified_behavior:NormalGunBehavior = new_behavior as NormalGunBehavior
		specified_behavior.stat_component = stat_component
		
	new_behavior.weapon_data = weapon_data
	current_behavior_slot = new_behavior
	add_child(new_behavior)
	

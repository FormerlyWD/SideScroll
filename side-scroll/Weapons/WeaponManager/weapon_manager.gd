extends Node
@onready var filepath:String = "res://Weapons/WeaponBehavior/AllCustomBehaviors(DO NOT MODIFY)/"
@onready var normal_gun_behavior_packed_scene:PackedScene = load(filepath + "NormalGunBehaviorNode.tscn")
@onready var lazer_blaster_behavior_packed_scene:PackedScene = load(filepath + "LazerBlasterBehaviorNode.tscn")
@onready var bullet_container_ref:Node2D

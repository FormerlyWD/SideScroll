extends Node
@onready var filepath:String = "res://Weapons/WeaponBehavior/AllCustomBehaviors/"
@onready var normal_gun_behavior_packed_scene:PackedScene = load(filepath + "NormalGunBehaviorNode.tscn")
@onready var bullet_container_ref:Node2D

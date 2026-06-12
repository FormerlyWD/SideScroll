extends Node2D
class_name BulletOutput
@onready var bullet_instance:PackedScene = preload("res://Weapons/Bullet/Bullet.tscn")


func generate_bullet(weapon_data:GunPatternWeaponData):
	var b:Bullet = bullet_instance.instantiate()
	
	
	b.projectile_damage = weapon_data.projectile_damage.final_value
	b.projectile_speed = weapon_data.projectile_speed.final_value
	b.global_rotation = global_rotation
	b.global_position = global_position
	WeaponManager.bullet_container_ref.add_child(b)
	

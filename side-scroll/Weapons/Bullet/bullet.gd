extends Area2D
class_name Bullet

@onready var flag:String
@onready var projectile_speed:float
@onready var projectile_damage:float


func _physics_process(delta: float) -> void:
	global_position +=  transform.x *projectile_speed*delta
func _on_body_entered(body: Node2D) -> void:
	print("procced")
	if body is Unit:
		if body is Player:
			
			delete()
			
			
func delete():
	self.queue_free()

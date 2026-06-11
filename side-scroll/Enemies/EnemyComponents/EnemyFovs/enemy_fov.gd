extends Area2D
class_name EnemyFov
var is_player_entered:bool = false
signal player_entered
signal player_exited
func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		player_entered.emit()
		is_player_entered = true
		print("player hit")


func _on_body_exited(body: Node2D) -> void:
	if body is Player:
		player_exited.emit()
		is_player_entered = false

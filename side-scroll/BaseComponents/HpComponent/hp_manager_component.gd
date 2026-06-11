extends Node
class_name HpManagerComponent

@export var health:float



		
func set_health(new_value:float = 5):
	if new_value > health:
		print("health increase")
	health = new_value
	
func deplete_health(subtracted_value:float = 5):
	health -= subtracted_value
	print(health)

extends HBoxContainer
class_name weaponStatUi
@export var weapon_generation: WeaponGeneration


signal new_weapon_chosen(id:int)

func bind_children_to_signal():
	var count:int = 0
	for child in get_children():
		if child.has_signal("pressed"):
			if not child.is_connected("pressed",chose_weapon):
				child.pressed.connect(chose_weapon.bind(child.id))
func chose_weapon(id:int):
	var new:WeaponData = weapon_generation.currently_generated_weapon_array[id]
	print(weapon_generation.currently_generated_weapon_array[id])
func bind_children_to_id():
	var id_parse:int = 0
	for child in get_children():
		child.id = id_parse
		id_parse +=1
	

extends Resource
class_name StatModifier


#min and max values chooses between these numbers for example 5-15 it ramndomly chooses 
# a value that is between them. this can scale with rarity in the function
# or it can have some external xp
#for external xp it has to be translated to actual changes
# for example if i have an item *still not confirmed* and it gives +50% proj. speed
# it must preview the changes as a popup, like 500->1000 proj speed
# just like in my old game Outer Space
@export var base_min: float = 5.0
@export var base_max: float = 15.0


var external_bonus_xp:float = 0.0
var rng_result_value: float = 0.0
var stat_bonus:float = 0.0
var flat_modifiers:float = 0.0
var final_value:float = 0.0

func initialize_roll(current_xp: float, rarity_modifier:float = 1.0):
	rng_result_value = randf_range(base_min, base_max) * rarity_modifier
	update_calculations(current_xp)
func add_bonus_xp(amount: float, current_weapon_xp: float):
	external_bonus_xp += amount
	update_calculations(current_weapon_xp)
func update_calculations(weapon_xp: float):
	var total_calculated_xp := weapon_xp + external_bonus_xp
	
	var max_bonus := 50.0
	var linear_bonus := 2.0 * total_calculated_xp
	stat_bonus = linear_bonus / (1.0 + (linear_bonus / max_bonus))
	update_final_value()

func update_final_value():
	final_value = rng_result_value + stat_bonus + flat_modifiers

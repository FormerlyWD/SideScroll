extends StatModifier
class_name StatModifierDiminishing


func update_calculations(weapon_xp: float):
	var total_calculated_xp := weapon_xp + external_bonus_xp
	
	var max_bonus := 50.0
	var linear_bonus := 2.0 * total_calculated_xp
	stat_bonus = linear_bonus / (1.0 + (linear_bonus / max_bonus))
	update_final_value()

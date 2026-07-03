extends VBoxContainer
class_name StatsModificationDescriber
@export var loaded_stat_description_row:PackedScene 
func add_stat_modifier(stat:StatModifier):
	var stat_description_row:StatDescriptionRow = loaded_stat_description_row.instantiate()
	add_child(stat_description_row)
	
	stat_description_row.stat_name.text = stat.ui_name
	stat_description_row.stat_value.text = str(stat.final_value)

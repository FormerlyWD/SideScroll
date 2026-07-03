extends VBoxContainer
class_name StatsModificationDescriber

func add_stat_modifier(stat:StatModifier):
	var name_label:Label = Label.new()
	add_child(name_label)
	name_label.text = stat.ui_name
	

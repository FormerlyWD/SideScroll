extends Node

func humanize_snake_case(s: String) -> String:
	var parts = s.split("_")
	for i in range(parts.size()):
		parts[i] = parts[i].capitalize()
	return " ".join(parts)

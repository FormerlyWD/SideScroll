extends Node

@export var dimensions_length := [0,0,0]
var rng:RandomNumberGenerator = RandomNumberGenerator.new()
@export var number_of_long_dimension = 0 
var current_dimension := 0
var total_number_sections := 0
@export var minimum_dimension := 2
@export var maximum_dimension := 5
@export var maximum_minimum_dimension := 3
@export var long_dimension_threshold := [4,5]


var dimension_scenes := [preload("uid://dqkx16e7jkf58"), preload("uid://c1ue4dpq058wc"), preload("uid://2jaswinb6yce")]

func map_gen():
	dimensions_length = [rng.randi_range(minimum_dimension,maximum_dimension), rng.randi_range(minimum_dimension,maximum_dimension), rng.randi_range(minimum_dimension,maximum_dimension)]
	current_dimension = 0
	for dimension in dimensions_length:
		current_dimension += 1
		if long_dimension_threshold.has(dimension):
			if number_of_long_dimension >= 1:
				dimensions_length[current_dimension-1] = rng.randi_range(minimum_dimension,maximum_minimum_dimension)
			else:
				number_of_long_dimension += 1
	current_dimension = 0
	print(dimensions_length)
	for dimension in dimensions_length:
		for section in range(dimension):
			total_number_sections += 1
			var temp = dimension_scenes[current_dimension].instantiate()
			temp.position = Vector2(-1 + (total_number_sections * 1151), -111.0)
			add_child(temp)
			print(temp.position)
		current_dimension += 1
		print(current_dimension)
		
	
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	map_gen()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

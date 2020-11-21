extends Node2D

var monedas = 0
var last_time = 0
var best_time = 0
var current_time = 0

var sprites = [preload("res://PNG/Car_Blue.png"),preload("res://PNG/Car_Red.png"),preload("res://PNG/Car_Yellow.png")]
var current_skin = 2

var current_checkpoint = null

func start_level():
	if get_node_or_null("/root/Main/car/Sprite") != null: #check por seguridad
		get_node_or_null("/root/Main/car/Sprite").texture = sprites[current_skin]
	else:
		print(get_tree().get_root())
		#car.Sprite.texture = sprites[current_skin]

func reset_level(car):
	if current_checkpoint != null:
		car.position = current_checkpoint.position
	else:
		get_tree().reload_current_scene()

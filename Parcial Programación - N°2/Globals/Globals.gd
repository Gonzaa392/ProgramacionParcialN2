extends Node2D

var monedas = 0
var last_time = 0
var best_time = 0
var current_time = 0

var current_checkpoint = null

func reset_level(car):
	if current_checkpoint != null:
		car.position = current_checkpoint.position
	else:
		get_tree().reload_current_scene()

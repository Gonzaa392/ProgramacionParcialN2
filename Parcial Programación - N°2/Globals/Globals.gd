extends Node2D

var monedas = 0
var last_time = 0
var best_time = 0
var current_time = 0
var current_checkpoint = null

var sprites = [preload("res://PNG/Car_Blue.png"),preload("res://PNG/Car_Red.png"),preload("res://PNG/Car_Yellow.png")]
var current_skin = 1

var save_path = "user://save.dat"

func start_level():
	load_skin()
	if get_node_or_null("/root/Main/car/Sprite") != null: #check por seguridad
		get_node_or_null("/root/Main/car/Sprite").texture = sprites[current_skin]

func save_skin():
	var archivo = File.new()
	var err = archivo.open(save_path,File.WRITE)
	if err == OK:
		archivo.store_var(current_skin)
		archivo.close()
	else:
		print("paso algo malo guardando las skins chabon mal ahi")

func load_skin():
	var archivo = File.new()
	if archivo.file_exists(save_path):
		var err = archivo.open(save_path, File.READ)
		if err == OK:
			var skin = archivo.get_var()
			archivo.close()
			current_skin = skin

func reset_level(car):
	if current_checkpoint != null:
		car.position = current_checkpoint.position
	else:
		get_tree().reload_current_scene()

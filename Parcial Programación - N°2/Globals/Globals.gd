extends Node2D

var monedas = 0
var last_time = 0
var best_time = 0
var current_time = 0
var current_checkpoint = null

var save_path = "user://save.dat"

var skin_unlocked = [true,true,true]
var sprites = [preload("res://PNG/Car_Red.png"),preload("res://PNG/Car_Blue.png"),preload("res://PNG/Car_Yellow.png")]
var current_skin = 1

func _ready():
	var archivo = File.new()
	if archivo.file_exists(save_path):
		var err = archivo.open(save_path, File.READ)
		if err == OK:
			print("En teoria anduvo")
			var data = archivo.get_var()
			archivo.close()
			current_skin = data

func _process(delta):
	if Input.is_action_just_pressed("ui_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func start_level():
	if get_node_or_null("/root/Main/car/Sprite") != null: #check por seguridad
		print("me detecta el sprite")
		get_node_or_null("/root/Main/car/Sprite").texture = sprites[current_skin]

func reset_level(car):
	if current_checkpoint != null:
		car.position = current_checkpoint.position
	else:
		get_tree().reload_current_scene()

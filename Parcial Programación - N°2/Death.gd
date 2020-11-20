extends Node2D

export(String) var level_scene = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(level_scene)
		if err != OK:
			pass # Replace with function body.

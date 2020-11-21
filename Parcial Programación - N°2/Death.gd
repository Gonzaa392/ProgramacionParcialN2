extends Node2D

export(String) var level_scene = ""

func _on_Area2D_body_entered(body):
	if body.get_name() == "car":
		Globals.reset_level(body)

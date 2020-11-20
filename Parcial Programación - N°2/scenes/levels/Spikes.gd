extends Node2D

export(String) var level_scene = ""

func _on_Area2D_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(level_scene)
		if err != OK:
			pass # Replace with function body.

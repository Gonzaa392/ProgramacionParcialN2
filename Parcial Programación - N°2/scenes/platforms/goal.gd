extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var target_scene = ""


func _on_goal_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(target_scene)
		if err != OK:
			print("Error al cambiar de Escena")

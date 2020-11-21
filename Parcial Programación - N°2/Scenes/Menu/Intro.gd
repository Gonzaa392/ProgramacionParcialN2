extends Node2D

func _on_AnimationPlayer_animation_finished(anim_name):
		var err = get_tree().change_scene("res://Scenes/Menu/Menu.tscn")
		if err != OK:
			print("Error al cambiar de Escena")
			pass # Replace with function body.


extends TextureButton


func _on_ExitButton_pressed():
		var err = get_tree().change_scene("res://Scenes/Menu/LevelSelection.tscn")
		if err != OK:
			print("Error al cambiar de Escena")
			pass # Replace with function body.

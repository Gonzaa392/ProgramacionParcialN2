extends TextureButton


export(String) var target_scene = ""

func _on_Level_1_pressed():
	var err = get_tree().change_scene(target_scene)
	if err != OK:
		print("Error al cambiar de Escena")
	pass # Replace with function body.
	

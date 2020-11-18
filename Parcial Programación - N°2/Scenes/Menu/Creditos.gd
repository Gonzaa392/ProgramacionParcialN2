extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var target_scene = ""


func _on_Creditos_pressed():
	var err = get_tree().change_scene(target_scene)
	if err != OK:
		print("Error al cambiar de Escena")
		pass

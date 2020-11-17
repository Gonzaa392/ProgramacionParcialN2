extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var target_scene = ""

# Called when the node enters the scene tree for the first time.

func _on_TextureButton_pressed():
	var err = get_tree().change_scene(target_scene)
	if err != OK:
		print("Error al cambiar de Escena")
	pass # Replace with function body.

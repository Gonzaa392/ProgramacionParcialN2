extends TextureButton


export(String) var target_scene = ""

# Called when the node enters the scene tree for the first time

func _on_Salir_pressed():
	get_tree().quit()

extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(String) var target_scene = ""

# Called when the node enters the scene tree for the first tim
func _ready():
	connect("pressed", self, "on_button_pressed")

func _on_Button_pressed():
	var err = get_tree().change_scene(target_scene)
	if err != OK:
		print("Error al cambiar de Escena")

extends Node2D


func _process(delta):
	get_node("car/Camera2D/CanvasLayer/Label").text = "MONEDAS:\n" + str(Globals.monedas)
	VisualServer.set_default_clear_color(Color(0.9,0.9,0.8))
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
<<<<<<< Updated upstream
var print_coins = Globals.monedas

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Label").text = "MONEDAS:\n" + str(print_coins)
	VisualServer.set_default_clear_color(Color(0.9,0.9,0.8))
	pass # Replace with function body.
=======

func _pickup_collected():
	get_node("car/Camera2D/CanvasLayer/Label").text = "MMONEDAS"""
# Called when the node enters the scene tree for the first time.
>>>>>>> Stashed changes


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

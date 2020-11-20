extends Node2D
var time_start = 0
var time_now = 0
export(String) var goal_target_scene = ""

func _process(delta):
	get_node("car/Camera2D/HUD2/VBoxContainer/monedas").text = "MONEDAS:\n" + str(Globals.monedas)
	VisualServer.set_default_clear_color(Color(0.9,0.9,0.8))
	#Timer Activado.
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	Globals.current_time = str_elapsed
	get_node("car/Camera2D/HUD2/VBoxContainer/tiempo").text = "TIEMPO:\n" + str(Globals.current_time)
	
func _ready():
		time_start = OS.get_unix_time()
		set_process(true)

func _on_goal_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(goal_target_scene)
		if err != OK:
			print("Error al cambiar de Escena")
			
	pass # Replace with function body.

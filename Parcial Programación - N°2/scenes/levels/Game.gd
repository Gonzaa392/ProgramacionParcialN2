extends Node2D
var time_start = 0
var time_now = 0

export(String) var goal_target_scene = ""
export(String) var goal2_target_scene = ""
export(String) var goal3_target_scene = ""

func _ready():
		time_start = OS.get_unix_time()
		set_process(true)
		Globals.current_checkpoint = null
		Globals.start_level()

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
	
	if Input.is_action_pressed("ui_restart"):
		get_tree().reload_current_scene()

func _on_goal_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(goal_target_scene)
		if err != OK:
			print("Error al cambiar de Escena")
			

func _on_goal2_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(goal2_target_scene)
		if err != OK:
			print("Error al cambiar de Escena")
	pass # Replace with function body.


func _on_goal3_body_entered(body):
	if body.get_name() == "car":
		var err = get_tree().change_scene(goal3_target_scene)
		if err != OK:
			print("Error al cambiar de Escena")
	pass # Replace with function body.

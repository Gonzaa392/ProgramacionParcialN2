extends Node2D

func _on_Area2D_body_entered(body):
	Globals.monedas = 0
	if body.get_name() == "car":
		Globals.reset_level(body)

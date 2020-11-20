extends Node2D

func _on_Area2D_body_entered(body):
	if body.get_name() == "car":
		Globals.monedas += 1
		print(Globals.monedas)
		queue_free()

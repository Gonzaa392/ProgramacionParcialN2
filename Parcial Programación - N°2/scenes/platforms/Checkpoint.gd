extends Position2D

func _on_Area2D_body_entered(body):
	if body.get_name() == "car":
		Globals.current_checkpoint = self
		get_node("Area2D/CollisionShape2D/Label").visible = true

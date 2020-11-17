extends Sprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_rotation = lerp(global_rotation,0,0.1)
	pass

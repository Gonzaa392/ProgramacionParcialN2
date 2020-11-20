extends Area2D


func _ready():
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(p_body):
	if p_body.is_in_group("player"):
		pass

# Do logic to record player's current position
# or a default position relative to the checkpoint.
# Could save it to a variable anywhere, # store it in a Resource or ConfigFile in `user://`,
# or upload it to a server using a child HttpRequest node.
# Declare member variables here. 

func _on_Area2D_body_entered(body):
	if body.name == 'car':
		body.spawn_point = position
	pass # Replace with function body.

extends RigidBody2D

var can_jump = false
export var SPEED = 10
const ROT_IMPULSE = 40000

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		$r_wheel.angular_velocity = SPEED
		$l_wheel.angular_velocity = SPEED
	
	elif Input.is_action_pressed("ui_left"):
		$r_wheel.angular_velocity = -SPEED
		$l_wheel.angular_velocity = -SPEED
	
	#print($r_whray.is_colliding())
	
	if $ray_floor.is_colliding() or $ray_ceil.is_colliding():
		can_jump = true
	
	if Input.is_action_pressed("ui_up") and !$ray_floor.is_colliding():
		self.apply_torque_impulse(-ROT_IMPULSE)
	
	if Input.is_action_pressed("ui_down") and !$ray_floor.is_colliding():
		self.apply_torque_impulse(ROT_IMPULSE)
	
	if Input.is_action_just_pressed("ui_accept") and can_jump:
		self.apply_central_impulse(Vector2(0,-120000))
		can_jump = false

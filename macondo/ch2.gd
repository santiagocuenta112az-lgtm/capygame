extends Node3D

var x = 0
func _physics_process(delta: float) -> void:
	position = Vector3.ZERO
	rotation= Vector3(x,0,0)
	# Add the gravity.
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if Input.is_key_pressed(KEY_W) and x < PI/3+0.04:
		x = x + 0.05
	if Input.is_key_pressed(KEY_S) and x > -PI/3-0.04:
		x = x - 0.05

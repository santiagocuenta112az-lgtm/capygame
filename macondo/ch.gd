extends Node3D

func _physics_process(delta: float) -> void:
	if Input.is_key_pressed(KEY_A) and rotation.y < PI+0.1:
		rotation.y = rotation.y + 0.05
	if Input.is_key_pressed(KEY_D)and rotation.y > -0.1:
		rotation.y = rotation.y - 0.05

extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node3D) -> void:
	if body.name == "mango" or body.name == "coffe" or body.name == "starfruit":
		body.position = Vector3(100,0,100)
		Global.score += 1
		[get_node("../mango"),get_node("../starfruit"),get_node("../coffe")][randi_range(0,2)].position = Vector3(-22,9,30)
		get_node("../mango").linear_velocity = Vector3.ZERO
		get_node("../starfruit").linear_velocity = Vector3.ZERO
		get_node("../coffe").linear_velocity = Vector3.ZERO
	pass # Replace with function body.

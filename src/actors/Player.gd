extends Actor



func _physics_process(delta: float) -> void:	
	
	var input :=  Input.get_action_strength("thrust")
	if input ==	 1 :
		add_force(Vector2(0,10),Vector2(0,-10))
	
	add_force(Vector2(0,0),Vector2(0,2))
	
	

	var lab = get_node("Label")
	lab.set_text(String(linear_velocity.y))
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

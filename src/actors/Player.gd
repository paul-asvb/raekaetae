extends Actor

var force := Vector2(0,-10)

func _physics_process(delta: float) -> void:	
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	if right ==	 1 :
		add_force(Vector2(-10,10),force)
	if left ==	 1 :
		add_force(Vector2(10,10),force)
	
	#linear_velocity = max(Vector2(10,10))
	
	#add_force(Vector2(0,0),Vector2(0,2))
	
	

	var lab = get_node("Label")
	lab.set_text(String(linear_velocity.y))
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

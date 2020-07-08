extends Actor

var velocityMax := Vector2(100,100)
var force := 3

func _physics_process(delta: float) -> void:	
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	var boosterForce = Vector2(-0,100)
	if right ==	 1 :
		var offsetRight := Vector2(-0,100)
		add_force(offsetRight,boosterForce)
	if left ==	 1 :
		var offsetleft := Vector2(-0,100)		
		add_force(offsetleft,boosterForce)
	
	linear_velocity = velocityMax.clamped(3)
	
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

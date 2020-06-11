extends Actor

var velocity: = Vector2.ZERO

export var speed: = Vector2(300,100)
export var gravity : = 300	
export var thrust := Vector2(0,0)
export var acceleration := -1.1

func _physics_process(delta: float) -> void:	
	
	var input :=  Input.get_action_strength("thrust")
	velocity.y = gravity * delta 
	#velocity.y= max(velocity.y,speed.y)
	if input ==	 1 :
		velocity.y = velocity.y*acceleration
	velocity = move_and_slide(velocity)
	
	#var direction: = Vector2(Input.get_action_strength("move_left")-Input.get_action_strength("move_right"),0)
	
	var lab = get_node("Label")
	lab.set_text(String(velocity))
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

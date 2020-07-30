extends Actor

var velocityMax := Vector2(100,100)
var force := 2
var offset := 100
var boosterTorque :=2

func _process(delta):
	
	get_node("fireRight").visible = false
	get_node("fireLeft").visible = false
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	
	if right ==	 1 :
		get_node("fireRight").visible = true
		var boosterForceRight = Vector2(-boosterTorque,-force)#.direction_to(-self.linear_velocity)	
		var offsetRight := Vector2(offset,0)
		apply_impulse(offsetRight,boosterForceRight)
		
	if left ==	 1 :
		get_node("fireLeft").visible = true
		var boosterForceLeft = Vector2(boosterTorque,-force)#.direction_to(-self.linear_velocity)	
		var offsetleft := Vector2(-offset,0)		
		apply_impulse(offsetleft,boosterForceLeft)
	
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

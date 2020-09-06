extends RigidBody2D

var velocityMax := Vector2(100,100)
var force := 2
var offset := 50
var boosterTorque :=0

func _process(_delta):
	
	get_node("fireRight").visible = false
	get_node("fireLeft").visible = false
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	
	var playerrotation := get_global_transform().get_rotation()
	
	if right ==	 1 :
		get_node("fireRight").visible = true
		var boosterForceRight = Vector2(0,-force).rotated(playerrotation)
		
		var offsetRight := Vector2(offset,0)
		apply_impulse(offsetRight,boosterForceRight)
		
	if left ==	 1 :
		get_node("fireLeft").visible = true
		var boosterForceLeft = Vector2(0,-force).rotated(playerrotation)
		
		var offsetleft := Vector2(-offset,0)		
		apply_impulse(offsetleft,boosterForceLeft)

	print(playerrotation)
	get_node("MyLine").set_point_position(1,Vector2(0,-force*50).rotated(playerrotation))
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("MyLine").set_point_position(0,Vector2(0,0))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
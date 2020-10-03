extends RigidBody2D

var velocityMax := Vector2(100,100)
var force := 2
var offset := 50
var boosterTorque :=200

func _process(_delta):
	
	get_node("fireRight").visible = false
	get_node("fireLeft").visible = false
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	
	var playerrotation := get_global_transform().get_rotation()
	
	if right ==	 1 :
		$fireRight.visible = true
		var boosterForceRight = Vector2(0,-force).rotated(playerrotation)
		apply_torque_impulse(-boosterTorque)
		apply_central_impulse(boosterForceRight)
		
	if left ==	 1 :
		$fireLeft.visible = true
		apply_torque_impulse(boosterTorque)
		var boosterForceLeft = Vector2(0,-force).rotated(playerrotation)
		apply_central_impulse(boosterForceLeft)

	# $rootCamera.align()
	# print(playerrotation)
	# get_node("MyLine").set_point_position(1,Vector2(0,-force*50).rotated(playerrotation))
	
	return


# Called when the node enters the scene tree for the first time.
func _ready():
	# get_node("MyLine").set_point_position(0,Vector2(0,0))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

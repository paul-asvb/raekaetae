extends RigidBody2D

enum PlayerStates {
	FLYING
	EXPLODING
}

var velocityMax := Vector2(100,100)
var force := 2
var offset := 50
var boosterTorque :=200
var 	state = PlayerStates.FLYING
var startPos := Vector2(500,500)
var startAngle := 0

func _ready():
	$explosion.connect("animation_finished", self, "animationFinished")
	pass 

func _reset():
	print("_reset")
	$explosion.stop()
	position = startPos
	#linear_velocity = Vector2()	
	#transform = Transform2D(startAngle, startPos)	
	state = PlayerStates.FLYING

func _process(_delta):
		
	var coliBodies = get_colliding_bodies()
	if coliBodies.size() > 0:
		state = PlayerStates.EXPLODING
	
	match state:
		PlayerStates.FLYING:
			_flying()
		PlayerStates.EXPLODING:
			_exploding()
	return

func _flying():
	#print("_flying")
	var fireLeft = $rocket/fireLeft
	var fireRight = $rocket/fireRight
	var rocket = $rocket
		
	fireLeft.visible = false
	fireRight.visible = false
	$explosion.visible=false
	rocket.visible=true
	
	var left :=  Input.get_action_strength("move_left")
	var right :=  Input.get_action_strength("move_right")
	
	var playerrotation := get_global_transform().get_rotation()
	
	if right ==	 1 :
		fireRight.visible = true
		var boosterForceRight = Vector2(0,-force).rotated(playerrotation)
		apply_torque_impulse(-boosterTorque)
		apply_central_impulse(boosterForceRight)
			
	if left ==	 1 :
		fireLeft.visible = true
		apply_torque_impulse(boosterTorque)
		var boosterForceLeft = Vector2(0,-force).rotated(playerrotation)
		apply_central_impulse(boosterForceLeft)

func _exploding():
	#print("_exploding")
	$explosion.playing=true
	$explosion.visible=true
	$rocket.visible=false
	pass

func animationFinished():
	_reset()




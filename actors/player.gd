extends RigidBody2D

enum PlayerStates {
	FLYING
	EXPLODING
	RESETING
}

var velocityMax := Vector2(100,100)
var force := 2
var offset := 50
var boosterTorque :=200
var 	state = PlayerStates.FLYING
var startPos := Vector2(400,400)
var startAngle := 0

func _ready():
	$explosion.connect("animation_finished", self, "_animation_finished")
	$explosion.connect("body_entered", self, "bla")
	
	pass

func bla():
	print("bla")

func _integrate_forces(s):
	match state:
		PlayerStates.RESETING:
			state = PlayerStates.FLYING			
			_reset()
	#linear_velocity = Vector2()	
			#s.transform = Transform2D(startAngle, velocityMax)	
		PlayerStates.FLYING:
			var count = s.get_contact_count()
			if count > 0:
				state = PlayerStates.EXPLODING
			_flying()
		PlayerStates.EXPLODING:
			_exploding()
	pass

func _reset():
	print("_reset")
	$explosion.stop()
	position = startPos

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
	
func _animation_finished():
	state = PlayerStates.RESETING
	


extends KinematicBody2D
class_name Actor	

var velocity: = Vector2.ZERO

export var speed: = Vector2(300,100)
export var gravity : = 300		

func _physics_process(delta: float) -> void:	
	velocity.y = gravity *delta
	velocity.y= max(velocity.y,speed.y)
	velocity = move_and_slide(velocity)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

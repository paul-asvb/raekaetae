extends RigidBody2D


func _ready():
	connect("body_entered", self, "bla")
	pass

func bla():
	print("bla")

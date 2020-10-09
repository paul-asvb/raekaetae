extends Node2D


func _ready():
	resetLevel()
	pass # Replace with function body.

func resetLevel():
	for i in range(0, get_child_count()):
			get_child(i).queue_free()
	var scene = load("res://levels/testLevel.tscn")
	var scene_instance = scene.instance()
	scene_instance.set_name("testLevel")
	add_child(scene_instance)

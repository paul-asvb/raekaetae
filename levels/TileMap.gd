extends TileMap
var start := Vector2(500,300)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	resetLevel()
	pass # Replace with function body.

func resetLevel():
	$Player.position = start
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

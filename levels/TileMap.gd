extends TileMap
var startPos := Vector2(500,300)
var startAngle := 0

func _ready():
	resetLevel()
	pass

func resetLevel():
	$Player.state = Playerstate.FLYING
	$Player.transform = Transform2D(startAngle, startPos)
	$Player.linear_velocity = Vector2()
	pass

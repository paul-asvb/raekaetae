extends TileMap

func _ready():
	$Player._reset()
	connect("body_entered", self, "bla")
	pass

func bla():
	print("bla")

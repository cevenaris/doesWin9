extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	var close = Image.new()
	var maximize = Image.new()
	var minimize = Image.new()
	
	close.load("res://assets/images/close.png")
	maximize.load("res://assets/images/maximize.png")
	minimize.load("res://assets/images/minimize.png")
	
	close.resize(100, 100, 1)
	maximize.resize(100, 100, 1)
	minimize.resize(100, 100, 1)
	
	
static func getResolution():
	pass
	
static func getScale(resolution: Vector2):
	pass



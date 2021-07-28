extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var min_width: float = 192
export var min_height: float = 108
export var max_width : float = 1920
export var max_height: float = 1080


# Called when the node enters the scene tree for the first time.
func _ready():
	show() # remove later
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_window_resized():
	var size = rect_size
	var width = rect_size.x
	var height = rect_size.y
	
	rect_size.x = clamp(rect_size.x, min_width, max_width)
	rect_size.y = clamp(rect_size.y, min_height, max_height)
	
	$Area2D/CollisionShape2D.shape.extents.x = width / 2
	$Area2D/CollisionShape2D.shape.extents.y = height / 2

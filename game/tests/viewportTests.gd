extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vp
var ct
var wd
var cr


# Called when the node enters the scene tree for the first time.
func _ready():
	wd = $WindowDialog
	vp = $WindowDialog/ViewportContainer/Viewport
	ct = $WindowDialog/ViewportContainer
	cr = $WindowDialog/ViewportContainer/Viewport/Node2D2/ColorRect
	
	ct.rect_size = wd.rect_size
	wd.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_WindowDialog_resized():
	var size = wd.rect_size
	cr.rect_size = size / 2
	ct.rect_size = size
	print("CT size: " + str(ct.rect_size))
	print("VP size: " + str(vp.size))
	

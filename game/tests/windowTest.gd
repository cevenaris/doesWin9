extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$WindowDialog.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_WindowDialog_resized():
	$WindowDialog/VBoxContainer.rect_size = $WindowDialog.rect_size

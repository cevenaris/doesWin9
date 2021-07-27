extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var loc : String = "display/window/size/"
var w_size_multipler: float = ProjectSettings.get_setting(loc + "test_width") \
 / float(ProjectSettings.get_setting(loc +  "width"))
var h_size_multipler: float = ProjectSettings.get_setting(loc + "test_height") \
 / float(ProjectSettings.get_setting(loc + "height"))

var title
var start
var exit
var settings


# Called when the node enters the scene tree for the first time.
func _ready():
	title = $title
	start = $start
	exit = $exit
	settings = $settings
	
	start.popup()
	exit.popup_centered()
	print(str(w_size_multipler))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

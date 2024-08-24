extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_1M_mouse_entered():
	GlobalData.mt[0] = 1

func _on_1M_mouse_exited():
	GlobalData.mt[0] = 0

func _on_c1_pressed():
	GlobalData.color = Color("#d2fefe")

func _on_c2_pressed():
	GlobalData.color = Color("#7fffff")

func _on_c3_pressed():
	GlobalData.color = Color("#d88a38")

func _on_c4_pressed():
	GlobalData.color = Color("#000000")

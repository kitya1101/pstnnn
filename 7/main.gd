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
	GlobalData.color = Color("#d3c0ef")

func _on_c2_pressed():
	GlobalData.color = Color("#000000")


func _on_1_mouse_entered():
	GlobalData.OneEightNine[0] = true


func _on_1_mouse_exited():
	GlobalData.OneEightNine[0] = false


func _on_8_mouse_entered():
	GlobalData.OneEightNine[1] = true

func _on_8_mouse_exited():
	GlobalData.OneEightNine[1] = false

func _on_9_mouse_entered():
	GlobalData.OneEightNine[2] = true


func _on_9_mouse_exited():
	GlobalData.OneEightNine[2] = false
	
	




func _on_2M_mouse_entered():
	GlobalData.mt[1] = 1


func _on_2M_mouse_exited():
	GlobalData.mt[1] = 0

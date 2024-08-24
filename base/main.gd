extends Node2D

func _ready():

	yield(get_tree().create_timer(1), "timeout")
	$AP.play("tutam")
	yield($AP, "animation_finished")
	$mouse.visible = 0
	$ColorRect.visible = 0
	GlobalData.TutComplete = true


func _on_1S_mouse_entered():
	GlobalData.spot[0] = 1


func _on_1S_mouse_exited():
	GlobalData.spot[0] = 0


func _on_1E_mouse_entered():
	GlobalData.spot[0] = 2

func _on_1E_mouse_exited():
	GlobalData.spot[0] = 0

func _on_1M_mouse_entered():
	GlobalData.mt[0] = 1


func _on_1M_mouse_exited():
	GlobalData.mt[0] = 0


#--------------------------------------------------------------------

func _on_2S_mouse_entered():
	GlobalData.spot[1] = 1


func _on_2S_mouse_exited():
	GlobalData.spot[1] = 0


func _on_2E_mouse_entered():
	GlobalData.spot[1] = 2

func _on_2E_mouse_exited():
	GlobalData.spot[1] = 0

func _on_2M_mouse_entered():
	GlobalData.mt[1] = 1


func _on_2M_mouse_exited():
	GlobalData.mt[1] = 0
	
#--------------------------------------------------------------------

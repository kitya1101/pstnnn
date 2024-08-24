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

func _on_3S_mouse_entered():
	GlobalData.spot[2] = 1


func _on_3S_mouse_exited():
	GlobalData.spot[2] = 0


func _on_3E_mouse_entered():
	GlobalData.spot[2] = 2

func _on_3E_mouse_exited():
	GlobalData.spot[2] = 0

func _on_3M_mouse_entered():
	GlobalData.mt[2] = 1

func _on_3M_mouse_exited():
	GlobalData.mt[2] = 0

#--------------------------------------------------------------------


func _on_4S_mouse_entered():
	GlobalData.spot[3] = 1


func _on_4S_mouse_exited():
	GlobalData.spot[3] = 0


func _on_4E_mouse_entered():
	GlobalData.spot[3] = 2


func _on_4E_mouse_exited():
	GlobalData.spot[3] = 0


func _on_4M_mouse_entered():
	GlobalData.mt[3] = 1


func _on_4M_mouse_exited():
	GlobalData.mt[3] = 0
	
#--------------------------------------------------------------------



func _on_5S_mouse_entered():
	GlobalData.spot[4] = 1


func _on_5S_mouse_exited():
	GlobalData.spot[4] = 0


func _on_5E_mouse_entered():
	GlobalData.spot[4] = 2


func _on_5E_mouse_exited():
	GlobalData.spot[4] = 0


func _on_5M_mouse_entered():
	GlobalData.mt[4] = 1


func _on_5M_mouse_exited():
	GlobalData.mt[4] = 0

#--------------------------------------------------------------------------
func _on_check41_mouse_entered():
	GlobalData.check4[0] = true
	
	
func _on_check41_mouse_exited():
	GlobalData.check4[0] = false


func _on_check42_mouse_entered():
	GlobalData.check4[1] = true


func _on_check42_mouse_exited():
	GlobalData.check4[1] = false



func _on_check43_mouse_entered():
	GlobalData.check4[2] = true


func _on_check43_mouse_exited():
	GlobalData.check4[2] = false
#------------------------------------------------------------------------------------------


func _on_check51_mouse_entered():
	GlobalData.check5[0] = true


func _on_check51_mouse_exited():
	GlobalData.check5[0] = false


func _on_check52_mouse_entered():
	GlobalData.check5[1] = true

func _on_check52_mouse_exited():
	GlobalData.check5[1] = false

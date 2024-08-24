extends Node2D

onready var _lines := $"."
var _pressed := false
var _current_line: Line2D
var pst = Vector2(0,0)
var check = false


func _input(event: InputEvent) -> void:
	if !GlobalData.complete[4] and GlobalData.TutComplete: #클리어되지 않았을때만 작동
		
		
		if GlobalData.mt[4]!=1: #음뭐더라 그 범위 안에서 마우스 없으면 지워지게끔 바로
			clear_all_lines()
			GlobalData.StartCurrent[4] = false
		
		

			
			
			
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				_pressed = event.pressed
				yield(get_tree().create_timer(0.01), "timeout")
				if _pressed and GlobalData.spot[4]==1:
					GlobalData.StartCurrent[4]=true
					_current_line = Line2D.new()
					_current_line.default_color = Color.blue
					_current_line.width = 15
					_current_line.antialiased = true
					
					_lines.add_child(_current_line)
				else:
					_current_line = null  # 마우스 버튼을 놓으면 _current_line을 null로 설정
					if GlobalData.spot[4]!=2: # 마우스 놓을때 끝지점이 아니면 지워
						clear_all_lines()
					elif GlobalData.StartCurrent[4] and !GlobalData.complete[4]: #완료
						
						
						for i in range(GlobalData.CheckC5.size()):
							if !GlobalData.CheckC5[i]:
								clear_all_lines()						#-------------------------------------------------------------------------------------------
							else:
								check = true
						if check:
							GlobalData.complete[4] = true
							$"../5".visible = 1
							for i in range(11):
								$"../5".frame += 1
								yield(get_tree().create_timer(0.02), "timeout")

		if event is InputEventMouseMotion && _pressed && _current_line != null:
			pst = get_local_mouse_position()
			_current_line.add_point(pst)
			if GlobalData.check5[0]==true:#--------------------------------------------------------------------------
				GlobalData.CheckC5[0]=true
			if GlobalData.check5[1]==true:
				GlobalData.CheckC5[1]=true

func clear_all_lines():
	for child in _lines.get_children():
		child.queue_free()
	_lines.get_children().clear()
	_current_line = null  # 모든 선을 지운 후 _current_line을 null로 설정
	check = false
	GlobalData.complete[4] = false
	GlobalData.CheckC5[0]=false
	GlobalData.CheckC5[1]=false
	

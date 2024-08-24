extends Node2D

onready var _lines := $"."
var _pressed := false
var _current_line: Line2D
var pst = Vector2(0,0)


func _input(event: InputEvent) -> void:
	if !GlobalData.complete[1] and GlobalData.TutComplete: #클리어되지 않았을때만 작동
		
		
		if GlobalData.mt[1]!=1: #음뭐더라 그 범위 안에서 마우스 없으면 지워지게끔 바로
			clear_all_lines()
			GlobalData.StartCurrent[1] = false

			
			
			
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				_pressed = event.pressed
				yield(get_tree().create_timer(0.01), "timeout")
				if _pressed and GlobalData.spot[1]==1:
					GlobalData.StartCurrent[1]=true
					_current_line = Line2D.new()
					_current_line.default_color = Color.orange
					_current_line.width = 15
					_current_line.antialiased = true
					
					_lines.add_child(_current_line)
				else:
					_current_line = null  # 마우스 버튼을 놓으면 _current_line을 null로 설정
					if GlobalData.spot[1]!=2: # 마우스 놓을때 끝지점이 아니면 지워
						clear_all_lines()
					elif GlobalData.StartCurrent[1] and !GlobalData.complete[1]: #완료
						GlobalData.complete[1] = true
						$"../2".visible = 1
						for i in range(11):
							$"../2".frame += 1
							yield(get_tree().create_timer(0.02), "timeout")

		if event is InputEventMouseMotion && _pressed && _current_line != null:
			pst = get_local_mouse_position()
			_current_line.add_point(pst)

func clear_all_lines():
	for child in _lines.get_children():
		child.queue_free()
	_lines.get_children().clear()
	_current_line = null  # 모든 선을 지운 후 _current_line을 null로 설정
	

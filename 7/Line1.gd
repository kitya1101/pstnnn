extends Node2D

onready var _lines := $"."
var _pressed := false
var current_line: Line2D
var pst = Vector2(0,0)

func _input(event: InputEvent) -> void:
	if !GlobalData.complete[0] and GlobalData.TutComplete:
		if GlobalData.mt[0] != 1:
			clear_current_line()
			GlobalData.StartCurrent[0] = false
		
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				_pressed = event.pressed
				yield(get_tree().create_timer(0.01), "timeout")
				if _pressed and GlobalData.OneEightNine[0]:
					#####
					GlobalData.StartCurrent[0] = true
					current_line = Line2D.new()
					current_line.default_color = GlobalData.color
					current_line.width = 15
					current_line.antialiased = true
					current_line.z_index = 2
					_lines.add_child(current_line)
				else:
					current_line = null
					if !GlobalData.OneEightNine[0] or !GlobalData.EightOk:
						clear_current_line()
					else:
						GlobalData.complete[0] = true
						print("Rmx")
		
		if event is InputEventMouseMotion && _pressed && current_line != null:
			pst = get_local_mouse_position()
			current_line.add_point(pst)
			if GlobalData.OneEightNine[1]:
				GlobalData.EightOk = true
			if GlobalData.OneEightNine[2]:
				GlobalData.NineOk = true
			if GlobalData.OneEightNine[2] && !GlobalData.EightOk:
				clear_current_line()

func clear_current_line():
	for child in _lines.get_children():
		child.queue_free()
	GlobalData.EightOk = false
	_lines.get_children().clear()
	current_line = null  # 모든 선을 지운 후 _current_line을 null로 설정

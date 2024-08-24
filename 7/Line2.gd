extends Node2D

onready var _lines := $"."
var _pressed := false
var current_line: Line2D
var pst = Vector2(0,0)

func _input(event: InputEvent) -> void:
	if GlobalData.complete[0] and GlobalData.TutComplete:
		if GlobalData.mt[1] != 1:
			clear_current_line()
			GlobalData.StartCurrent[0] = false
		
		if event is InputEventMouseButton:
			if event.button_index == BUTTON_LEFT:
				_pressed = event.pressed
				yield(get_tree().create_timer(0.01), "timeout")
				if _pressed:
					GlobalData.StartCurrent[0] = true
					current_line = Line2D.new()
					current_line.default_color = Color("#d3c0ef")
					current_line.width = 50
					
					current_line.antialiased = true
					
					_lines.add_child(current_line)
				else:
					current_line = null
					if GlobalData.StartCurrent[0]:
						print("끝")
		
		if event is InputEventMouseMotion && _pressed && current_line != null:
			pst = get_local_mouse_position()
			current_line.add_point(pst)

func clear_current_line():
	if current_line != null:
		current_line.queue_free()
		current_line = null

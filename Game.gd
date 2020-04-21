extends Node2D
class_name Game

onready var nav_2d : Navigation2D = get_node("Navigation2D")
onready var line_2d : Line2D = get_node("Line2D")
onready var character : Sprite = get_node("Character")


func _unhandled_input(event: InputEvent) -> void:
#	if event.is_action_pressed("click")
	if not (event is InputEventMouseButton):
		return
	if event.button_index != BUTTON_LEFT:
		return
	
	var new_path := nav_2d.get_simple_path(character.global_position, event.global_position)
	character.path = new_path
	line_2d.points = new_path

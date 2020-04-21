extends Node2D
class_name Game2

onready var nav_2d : Navigation2D = get_node("Navigation2D")
onready var line_2d : Line2D = get_node("Line2D")
onready var character : Sprite = get_node("Character")


func _unhandled_input(event: InputEvent) -> void:
	pass

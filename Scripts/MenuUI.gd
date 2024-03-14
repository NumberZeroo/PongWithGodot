extends Control
@onready var line_edit = $MarginContainer/VBoxContainer/LineEdit

func _on_play_pressed():
	line_edit.select()
	Global.player1 = line_edit.get_selected_text()
	
	get_tree().change_scene_to_file("res://Scenes/pong.tscn")
	

func _on_quit_pressed():
	get_tree().quit()

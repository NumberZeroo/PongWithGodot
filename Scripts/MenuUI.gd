extends Control
@onready var player_1 = $MarginContainer/VBoxContainer/Player1
@onready var player_2 = $MarginContainer/VBoxContainer/Player2

func _on_play_pressed():
	player_1.select()
	Global.player1 = player_1.get_selected_text()
	
	player_2.select()
	Global.player2 = player_2.get_selected_text()
	
	get_tree().change_scene_to_file("res://Scenes/pong.tscn")
	

func _on_quit_pressed():
	get_tree().quit()

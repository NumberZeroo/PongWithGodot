extends Area2D

@onready var ball = $"../ball"

func _process(delta):
	signal body_entered()

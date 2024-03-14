extends Sprite2D

var score := [0, 0]
const paddle_speed = 500
@onready var p_1 = $Score/p1
@onready var p_2 = $Score/p2

func _process(delta):
	p_1.text = str(score[0])
	p_2.text = str(score[1])

extends Sprite2D

var score := [0, 0]
const paddle_speed = 500
@onready var p_1 = $Score/p1
@onready var p_2 = $Score/p2
@onready var p_3 = $Score/p3

func _process(delta):
	p_1.text = str(score[0])
	p_2.text = str(score[1])
	
	p_3.text = Global.player1

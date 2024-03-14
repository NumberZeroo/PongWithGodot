extends CharacterBody2D

var speed
var v1
var v2

func _ready():
	speed = 300
	
	v1 = randf_range(-0.5, 1)
	v2 = randf_range(-2, 2)
	
	set_velocity(Vector2(v1, v2))
	position = Vector2(-300, -230)

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta * speed)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		speed += log(speed)

func _on_score_left_body_entered(this):
	_ready()
	get_parent().score[1] += 1


func _on_score_right_body_entered(this):
	_ready()
	get_parent().score[0] += 1

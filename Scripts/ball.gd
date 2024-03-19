extends CharacterBody2D

@onready var collision_effect = $"../CollisionEffect"
@onready var point_effect = $"../PointEffect"
var speed
var v1
var v2

func _ready():
	speed = 400
	var arr = [-1,1]
	
	v1 = randf_range(-0.9, 0.9)
	v2 = sqrt(1-v1*v1) * arr[randi()%arr.size()] 
	
	set_velocity(Vector2(v1, v2))
	position = Vector2(-300, -230)


func _physics_process(delta):
	var collision = move_and_collide(velocity * delta * speed)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		collision_effect.play()
		speed += log(speed)*0.5

func _on_score_left_body_entered(this):
	_ready()
	get_parent().score[1] += 1
	point_effect.play()


func _on_score_right_body_entered(this):
	_ready()
	get_parent().score[0] += 1
	point_effect.play()

extends CharacterBody2D

var v1 = randf_range(0, 1)
var v2 = randf_range(0, 2)
var speed = 300

func _ready():
	set_velocity(Vector2(v1, v2))

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta * speed)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())

extends CharacterBody2D

var win_height : int
var p_height : int
	
func _process(delta):
	
	if Input.is_action_pressed("p2Up"):
		position.y -= get_parent().paddle_speed * delta
		
	elif Input.is_action_pressed("p2Down"):
		position.y += get_parent().paddle_speed * delta

	move_and_slide()

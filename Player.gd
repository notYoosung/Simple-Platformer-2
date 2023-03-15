extends KinematicBody2D

var velocity = Vector2.ZERO
	
func _physics_process(delta: float) -> void:
	velocity.y += 2
	if Input.is_action_pressed("ui_right"):
		velocity.x = 10
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -10
	else:
		velocity.x = 0
	velocity = move_and_slide(velocity)

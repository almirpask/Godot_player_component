extends KinematicBody2D

const MAX_SPEED = 80
const ACCELERATION = 500
const FRICTION = 500

var player_position = Vector2.ZERO
enum {
	MOVE,
	JUMP,
	ATTACK
}

var state = MOVE

func _ready():
	pass

func _physics_process(delta):
	match state:
		MOVE:
			move_state(delta)

func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		player_position = player_position.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
	else:
		player_position = player_position.move_toward(Vector2.ZERO, FRICTION * delta)
	move()
	
func move():
	player_position = move_and_slide(player_position)

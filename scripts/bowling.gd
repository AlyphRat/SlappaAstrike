extends RigidBody2D

const UP = Vector2(0, -1)
var currentState = ""
export var MAXSPEED = 20
export var MAXFALLSPEED = 300
export var JUMPSPEED = 400
var MOVEMENT = Vector2()
const GRAVITY = 3000

func _input(event):
	if Input.is_action_pressed("left"):
		linear_velocity.x -= MAXSPEED
	if Input.is_action_pressed("right"):
		linear_velocity.x += MAXSPEED

func _physics_process(delta):
#GRAVITY FALLS
	MOVEVENT.y += GRAVITY * delta
#STATES
	#MOVEMENT = move_and_slide(MOVEMENT,UP)		

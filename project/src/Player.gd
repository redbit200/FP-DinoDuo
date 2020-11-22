extends KinematicBody2D


const RUN_SPEED :int = 150
const JUMP_SPEED : int = -400
const CLIMB_SPEED : int = 90

var gravity : int = 1200
var velocity := Vector2()
var jumping : bool = false
var ladder_on : bool = false
var at_goal : bool = false


onready var animated_sprite := $AnimatedSprite


func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed("move_right")
	var left = Input.is_action_pressed("move_left")
	var jump = Input.is_action_just_pressed("jump")
	var climb_up = Input.is_action_pressed("ui_up")
	var climb_down = Input.is_action_pressed("ui_down")

	if jump and is_on_floor():
		$JumpSound.play()
		if !right and !left:
			jumping = true
			animated_sprite.play("jump")
		velocity.y = JUMP_SPEED
	if right:
		animated_sprite.set_flip_h(false)
		animated_sprite.play("walk")
		velocity.x += RUN_SPEED
	if left:
		animated_sprite.set_flip_h(true)
		animated_sprite.play("walk")
		velocity.x -= RUN_SPEED
	if !left and !right and !jumping:
		animated_sprite.play("idle")
		
	if ladder_on:
		gravity = 0
		if climb_up:
			velocity.y = -CLIMB_SPEED
		elif climb_down:
			velocity.y = CLIMB_SPEED
		else:
			velocity.y = 0
	else:
		gravity = 1200


func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2(0, -1))

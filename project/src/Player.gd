extends KinematicBody2D

const RUN_SPEED :int = 150
const JUMP_SPEED : int = -550
const GRAVITY : int = 1200
var velocity := Vector2()
var jumping : bool = false

onready var animated_sprite := $AnimatedSprite

func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed('ui_right')
	var left = Input.is_action_pressed('ui_left')
	var jump = Input.is_action_just_pressed('ui_select')

	if jump and is_on_floor():
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

func _physics_process(delta):
	get_input()
	velocity.y += GRAVITY * delta
	velocity = move_and_slide(velocity, Vector2(0, -1))

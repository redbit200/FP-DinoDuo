extends KinematicBody2D


const gravity = 200
const speed_max = 300
const acceleration = 500
const jump = 275
const friction = 0.5

var direction := Vector2(0, 0)
var linear_velocity = Vector2(0, 0)

onready var animated_sprite := $AnimatedSprite


func _physics_process(delta):
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	
	animated_sprite.play("idle" if direction.x == 0 else "walk")
	animated_sprite.scale.x = -1 if direction.x < 0 else 1
	
	if direction.x != 0:
		linear_velocity.x += direction.x * acceleration * delta
		linear_velocity.x = clamp(linear_velocity.x, -speed_max, speed_max)
		
	linear_velocity.y += gravity * delta
	
	if is_on_floor():
		if direction.x == 0:
			linear_velocity.x = lerp(linear_velocity.x, 0, friction)
			
		if Input.is_action_just_pressed("jump"):
			linear_velocity.y = -jump 
	else:
		animated_sprite.play("jump")
		
		if Input.is_action_just_released("jump") and linear_velocity.y < -jump/2:
			 linear_velocity.y = -jump/2
			
		if direction.x == 0:
			linear_velocity.x = lerp(linear_velocity.x, 0, 0.02)
			
	var _ignored = move_and_slide(linear_velocity, Vector2.UP)

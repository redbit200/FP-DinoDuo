extends Camera2D


onready var p1 := get_parent().get_node("Player")
onready var p2 := get_parent().get_node("Player2")
onready var screen_size = Vector2(1088, 640)

var move_speed := 0.5
var zoom_speed := 0.05
var margin := Vector2(75, 75)
var zoom_min := 0.8
var zoom_max := 1


func _physics_process(_delta):
	var player_position = p1.position + p2.position / Vector2(2,2)
	position = lerp(position, player_position, move_speed)
	
	var rect = Rect2(position, Vector2.ONE)
	rect = rect.expand(p1.position)
	rect = rect.expand(p2.position)
	rect = rect.grow_individual(margin.x, margin.y, margin.x, margin.y)
	
	var z
	if rect.size.x > rect.size.y * screen_size.aspect():
		z = clamp(rect.size.x / screen_size.x, zoom_min, zoom_max)
	else:
		z = clamp(rect.size.y / screen_size.y, zoom_min, zoom_max)
		
	zoom = lerp(zoom, Vector2.ONE * z, zoom_speed)
	

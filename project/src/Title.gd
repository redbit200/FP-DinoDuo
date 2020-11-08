extends Node2D


func _process(_deta):
	if Input.is_action_just_pressed("jump"):
		var _ignored = get_tree().change_scene("res://src/Level.tscn")

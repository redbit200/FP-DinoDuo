extends Node2D


func _ready():
	var labelfont = $TitleLabel.get("customfonts/font")
	$Tween.interpolate_property($TitleLabel, "rect/scale", $TitleLabel.get_scale(), $TitleLabel.get_scale()*4, 2, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()


func _process(_deta):
	if Input.is_action_just_pressed("jump"):
		var _ignored = get_tree().change_scene("res://src/Level.tscn")

	


extends Node2D

var level_time : int = 0

func _process(delta):
	if Input.is_action_just_pressed('pause'):
		get_tree().paused = true
		$PausePopup.show()

func _on_ContinueButton_pressed():
	$PausePopup.hide()
	get_tree().paused = false

func _on_BackToTitleButton_pressed():
	get_tree().reload_current_scene()
	get_tree().change_scene("res://src/Title.tscn")
	get_tree().paused = false

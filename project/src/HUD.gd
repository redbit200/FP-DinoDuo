extends CanvasLayer

var level_time : int = 0

func _process(_delta):
	if Input.is_action_just_pressed('pause'):
		get_tree().paused = true
		$PausePopup.show()


func _on_ContinueButton_pressed():
	$PausePopup.hide()
	get_tree().paused = false


func _on_BackToTitleButton_pressed():
	var _ignored = get_tree().reload_current_scene()
	_ignored = get_tree().change_scene("res://src/Title.tscn")
	get_tree().paused = false


func _on_BackToTitleButton2_pressed():
	var _ignored = get_tree().reload_current_scene()
	_ignored = get_tree().change_scene("res://src/Title.tscn")
	get_tree().paused = false


func _on_NextLevel_pressed():
	var _ignored = get_tree().change_scene(Global.nextLevel)
	get_tree().paused = false

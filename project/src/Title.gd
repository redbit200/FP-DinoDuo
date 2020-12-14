extends Node2D

var level_selector := false 

func _ready():
	Global.nextLevel = "res://src/levels/Level.tscn"
	Global.levelNumber = 1
	
	
func _process(_deta):
	if Input.is_action_just_pressed("jump") && level_selector == false:
		var _ignored = get_tree().change_scene(Global.nextLevel)


func _on_LevelSelectButton_pressed():
	show_level_selector()


func show_level_selector():
	$LevelSelector.show()
	level_selector = true


func _on_Level1Button_pressed():
	Global.nextLevel = "res://src/levels/Level.tscn"
	Global.levelNumber = 1
	level_selector = false
	$LevelSelector.hide()
	


func _on_Level2Button_pressed():
	Global.nextLevel = "res://src/levels/Level2.tscn"
	Global.levelNumber = 2
	level_selector = false
	$LevelSelector.hide()


func _on_Level3Button_pressed():
	Global.nextLevel = "res://src/levels/Level3.tscn"
	Global.levelNumber = 3
	level_selector = false
	$LevelSelector.hide()

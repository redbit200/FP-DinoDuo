extends Node2D

var locked := false
var key1 := false
var key2 := false

func _ready():
	if Global.levelNumber <= 2:
		Global.nextLevel = "res://src/levels/Level" + String(Global.levelNumber+1) + ".tscn"
		Global.levelNumber += 1
		
	for child in get_children():
		if child.name == "Key":
			locked = true
		
	$LevelTime.start()


func _process(_delta):
	get_node("HUD/LevelTimeLabel").text = str(int($LevelTime.time_left)) + " Seconds Remaining"
	check_goal()
	
	
func check_goal():
	if (($Player.at_goal or $Player2.at_goal)) and ((!$Player.at_goal or !$Player2.at_goal)):
		$HUD/HintLabel.show()
	elif $Player.at_goal == true and $Player2.at_goal == true:
		$HUD/HintLabel.hide()
		if locked == true and (!key1 or !key2):
			$HUD/HintKey.show()
		else:
			$HUD/HintKey.hide()
			win_level()
	else:
		$HUD/HintLabel.hide()
		$HUD/HintKey.hide()
		
		
		
func _on_LevelTime_timeout():
	lose_level()
	get_tree().paused = true


func win_level():
	get_node("HUD/GameResult").show()
	get_node("HUD/GameResult/WinText").show()
	get_tree().paused = true


func lose_level():
	get_node("HUD/GameResult").show()
	get_node("HUD/GameResult/LoseText").show()
	get_tree().paused = true

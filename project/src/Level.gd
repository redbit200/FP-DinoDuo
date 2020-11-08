extends Node2D

func _ready():
	$LevelTime.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("HUD/LevelTimeLabel").text = str(int($LevelTime.time_left)) + " Seconds Remaining"
	check_goal()
	
func check_goal():
	if $Player.at_goal == true and $Player2.at_goal == false:
		$HUD/HintLabel.show()
	elif $Player.at_goal == false and $Player2.at_goal == true:
		$HUD/HintLabel.show()
	elif $Player.at_goal == true and $Player2.at_goal == true:
		$HUD/HintLabel.hide()
		win_level()
	else:
		$HUD/HintLabel.hide()
		
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

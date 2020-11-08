extends Node2D

func start_game():
	$LevelTime.start()
	$Title.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("HUD/LevelTimeLabel").text = str(stepify($LevelTime.time_left, 0.1)) + " Seconds Remaining" 

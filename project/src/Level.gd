extends Node2D

func _ready():
	$LevelTime.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("HUD/LevelTimeLabel").text = str(int($LevelTime.time_left)) + " Seconds Remaining" 

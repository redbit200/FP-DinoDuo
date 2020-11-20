extends Area2D


func _on_Spike_body_entered(body):
	if body.name == "Player":
		get_parent().lose_level()
	elif body.name == "Player2":
		get_parent().lose_level()

extends Area2D


func _on_Pipe_body_entered(body):
	if body.name == "Player":
		get_node("../Player").ladder_on = true
	elif body.name == "Player2":
		get_node("../Player2").ladder_on = true
	
	
func _on_Pipe_body_exited(body):
	if body.name == "Player":
		get_node("../Player").ladder_on = false
	elif body.name == "Player2":
		get_node("../Player2").ladder_on = false

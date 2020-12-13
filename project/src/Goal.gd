extends Area2D

func _on_Goal_body_entered(body):
	if body.name == "Player":
		get_node("../Player").at_goal = true
	elif body.name == "Player2":
		get_node("../Player2").at_goal = true


func _on_Goal_body_exited(body):
	if body.name == "Player":
		get_node("../Player").at_goal = false
	elif body.name == "Player2":
		get_node("../Player2").at_goal = false

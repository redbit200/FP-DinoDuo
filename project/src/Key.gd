extends Area2D


func _on_Key_body_entered(body):
	if body.name == "Player":
		queue_free()
		get_parent().key1 = true
	elif body.name == "Player2":
		queue_free()
		get_parent().key2 = true

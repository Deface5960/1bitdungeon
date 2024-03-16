extends Area2D

signal  spawn_exit

func _on_body_entered(body):
	if body.is_in_group("player"):
		print("I got the coin")
		spawn_exit.emit()
		queue_free()

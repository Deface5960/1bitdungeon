extends CharacterBody2D

var speed = 30
var player_chase = false
var player = null


func _physics_process(delta):
	if player_chase:
		position += (player.position - position)/speed


func _on_detect_body_entered(body):
	player = body
	player_chase = true


func _on_detect_body_exited(body):
	player = null
	player_chase = false

func enemy():
	pass

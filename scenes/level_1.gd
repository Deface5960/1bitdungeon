extends Node2D

var exit = preload("res://scenes/level_end.tscn")
var exit_pos = Vector2(266, 80)

func _on_coin_spawn_exit():
	var instance = exit.instantiate()
	instance.global_position = exit_pos
	add_child(instance)
	print("spawn the exit")

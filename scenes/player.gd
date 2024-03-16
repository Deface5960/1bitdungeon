extends CharacterBody2D

signal hit 

var enemy_inattack_range = false
var enemy_attack_cooldown = true
#var health = 50
#var player_alive = true
var screen_size
var reset_position = Vector2(266, 66)
var direction: Vector2 = Vector2.ZERO
@export var speed: int = 300

func _process(delta):
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()
 
func _on_player_hitbox_body_entered(body):
	if body.is_in_group("enemies"):
		set_global_position(reset_position)

func _on_player_hitbox_body_exited(body):
	if body.has_method("enemy"):
		enemy_inattack_range = true





extends Node2D

var speed = 400
var score_lab


# Called when the node enters the scene tree for the first time.
func _ready():
	score_lab = get_node("Label")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
# handle collision on the walls.  
#
func _on_up_body_entered(body):
	body.dir.y *= -1
func _on_down_body_entered(body):
	body.dir.y *= -1
func _on_left_body_entered(body):
	score_lab.update_score(2)
	body.queue_free()
	
	var ball = preload("res://ball.tscn").instantiate()
	ball.global_position  = Vector2(462,268)
	call_deferred("add_child", ball)
	
func _on_right_body_entered(body):
	score_lab.update_score(1)
	body.queue_free()
	
	var ball = preload("res://ball.tscn").instantiate()
	ball.global_position  = Vector2(462,268)
	call_deferred("add_child", ball)

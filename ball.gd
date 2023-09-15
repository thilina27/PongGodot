extends CharacterBody2D
var dir
var ball = true
var count 
# Called when the node enters the scene tree for the first time.
func _ready():
	count = 1
	var direction_X = [1 , -1].pick_random()
	var direction_Y = [1 , -1].pick_random()
	dir = Vector2(direction_X, direction_Y)
	print(dir)

func  _physics_process(delta):
	velocity = dir * 300 * (count)
	move_and_slide()
	

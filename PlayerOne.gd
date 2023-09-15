extends CharacterBody2D

var ball = false

var SPEED = 300.0
var dir = Vector2(0 , 0)

func _ready():
	SPEED = get_parent().speed

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	dir = Vector2(0,_get_intput())
	
	var can_move = false
	if position.y >= 530 and dir.y == -1:
		can_move = true
	elif position.y <= 134 and dir.y == 1:
		can_move = true
	elif position.y <= 530 and position.y >= 134:
		can_move = true
		
	if dir:
		velocity.y = dir.y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
	if can_move:
			move_and_slide()
	
func _get_intput():
	if Input.is_action_pressed("posgtwo_up"):
		return -1
	elif Input.is_action_pressed("posngtow_down"):
		return 1
	else:
		return 0
		
		

# ball hit p1
func _on_area_2d_body_entered(body):
	if body.ball:
		body.dir.x = 1
		body.count += 0.2

extends Label

var score_one
var score_two
# Called when the node enters the scene tree for the first time.
func _ready():
	score_one = 0
	score_two = 0
	text = str(score_one) + " " + str(score_two)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func update_score(player):
	if(player == 1):
		score_one += 1
	else:
		score_two += 1
	text = str(score_one) + " " + str(score_two)
		

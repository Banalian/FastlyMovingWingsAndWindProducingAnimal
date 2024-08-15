extends Node

@export var score_label: Label

var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func add_score():
	score += 1
	score_label.text = str("Score : ", score)

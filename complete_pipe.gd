extends Node2D


@export var move_speed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= delta * move_speed
	# ugly, but it's just to test
	if position.x < -50:
		queue_free()
	pass

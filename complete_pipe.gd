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


func _on_pipe_down_body_entered(body):
	if body.is_in_group("bird"):
		body.pipe_hit.emit()


func _on_pipe_up_body_entered(body):
	if body.is_in_group("bird"):
		body.pipe_hit.emit()


func _on_score_body_entered(body):
	if body.is_in_group("bird"):
		body.score_touched.emit()

extends RigidBody2D

signal score_touched
signal pipe_hit

var gravity_force = Vector2.DOWN * 100
var jump_force = Vector2.UP * 200
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += gravity_force * delta

func jump():
	set_axis_velocity(jump_force)

func _unhandled_input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			jump()


func _on_button_pressed():
	jump()

func fail_game():
	# for now, just delete the bird
	queue_free()
	pass

#func _on_body_entered(body):
	#print("touched something")
	#if body.is_in_group("pipe"):
		#fail_game()
	#if body.is_in_group("score_ring"):
		#score_touched.emit()
	#pass # Replace with function body.


func _on_score_touched():
	print("touched score")
	#score_touched.emit()
	# NOTE The signal is connected directly to the score system so emitting is not needed.
	# (But emitting it would be much more readable lol)


func _on_pipe_hit():
	print("hit pipe")
	fail_game()

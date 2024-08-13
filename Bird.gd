extends RigidBody2D

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

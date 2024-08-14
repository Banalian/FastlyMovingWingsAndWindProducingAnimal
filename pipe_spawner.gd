extends Node

@export var pipe_blueprint: PackedScene

@export var spawnpoint: Node2D

@export var height_range: int = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_pipe()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn_pipe():
	var new_pipe = pipe_blueprint.instantiate() as Node2D
	var position = Vector2(spawnpoint.position)
	position.y += randf_range(position.y + height_range, position.y - height_range)
	new_pipe.position = position
	add_child(new_pipe)
	print("Spawned pipe")
	pass

func _on_timer_timeout():
	spawn_pipe()
	pass # Replace with function body.

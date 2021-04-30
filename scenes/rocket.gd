extends RigidBody2D

var acceleration = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	processControls()

func processControls():
	if Input.is_key_pressed(KEY_UP):
		apply_impulse(Vector2(), Vector2(0, -acceleration))
		
	if Input.is_key_pressed(KEY_RIGHT):
		apply_impulse(Vector2(), Vector2(acceleration, 0))
		
	if Input.is_key_pressed(KEY_DOWN):
		apply_impulse(Vector2(), Vector2(0, acceleration))
		
	if Input.is_key_pressed(KEY_LEFT):
		apply_impulse(Vector2(), Vector2(-acceleration, 0))
		
	if Input.is_key_pressed(KEY_SPACE):
		get_tree().reload_current_scene()

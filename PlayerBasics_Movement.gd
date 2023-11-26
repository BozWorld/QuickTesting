extends Node2D

# Acceleration in pixels/sec/sec.
var gravity = Vector2(0, 300)

signal mySignal(vel)
# Acceleration in pixels/frame/frame.
var gravity_frame = Vector2(0, .033)

# Velocity in pixels/sec or pixels/frame.
var velocity = Vector2.ZERO

var use_delta = true
var target_fps = 60


func _ready():
	Engine.max_fps = target_fps


func _process(delta):
	mySignal.emit(velocity)
	if use_delta:
		velocity += gravity * delta
		$PlayerSprite.position += velocity * delta
	else:
		velocity += gravity_frame
		$PlayerSprite.position += velocity

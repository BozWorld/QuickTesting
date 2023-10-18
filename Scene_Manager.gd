extends Node2D

func _ready(): 
	$Player.mySignal.connect($HUD._receive_Velocity)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if($RayCastLearning/RayCast2D.is_colliding()):
		
	$HUD/FpsCounter.text = str(Engine.get_frames_per_second())



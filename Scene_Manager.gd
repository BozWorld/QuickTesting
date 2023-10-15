extends Node2D

func _ready(): 
	$Player.mySignal.connect($HUD._receive_Veloicty())
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HUD/FpsCounter.text = str(Engine.get_frames_per_second())

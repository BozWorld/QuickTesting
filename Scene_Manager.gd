extends Node2D

func _ready():
	_on_player_my_signal()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HUD/FpsCounter.text = str(Engine.get_frames_per_second())




func _on_player_my_signal():
	$HUD._receive_Veloicty()

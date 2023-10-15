extends CanvasLayer

@onready var label = $VelocityChecker

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$FpsCounter.text = str(Engine.get_frames_per_second())


func _receive_Veloicty(value):
	label.text = str(value)
	

extends Node2D

func _ready(): 
	$Player.mySignal.connect($HUD._receive_Velocity)



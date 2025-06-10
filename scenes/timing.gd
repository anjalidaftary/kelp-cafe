extends Node2D

@onready var timer = $Timer

var timeElapsed = false
var secElapsed = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _startTimer() -> void:
	timeElapsed = false
	secElapsed = false
	timer.start(-15)

func _getTime() -> float:
	var time = timer.get_time_left()
	timer.stop()
	return time


func _on_timer_timeout() -> void:
	if(!timeElapsed):
		print("time elapsed")
		timeElapsed = true
		timer.start(-45)
	elif(!secElapsed):
		print("second time elapsed")
		secElapsed = true

extends Node2D

@export var bar_speed := 20  # pixels per second
@export var left_limit := -45
@export var right_limit := 45

var direction := 1  # 1 = right, -1 = left
var is_stopped := false

@onready var bar = $MovingBar
@onready var success_zone = $SuccessZone
@onready var result_label = $StopButton

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_stopped: 
		return
	
	bar.position.x += direction * bar_speed * delta

	if bar.position.x >= right_limit:
		bar.position.x = right_limit
		direction = -1
	elif bar.position.x <= left_limit:
		bar.position.x = left_limit
		direction = 1
		
func _input(event):
	if event.is
	




func _on_stop_button_pressed() -> void:
	pass # Replace with function body.

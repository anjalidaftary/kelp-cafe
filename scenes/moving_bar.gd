extends Sprite2D

@export var bar_speed := 200  # pixels per second
@export var left_limit := 385
@export var right_limit := 785

@onready var button = $"../KelpButton"
@onready var bar = $"../MovingBar"
@onready var success_zone = $"../SuccessZone"

var buttonPressed = false
var direction := 1  # 1 = right, -1 = left
var successful = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("spacebar"):
		buttonPressed = false;
		
	
	if (buttonPressed):
		bar.position.x += direction * bar_speed * delta
		if bar.position.x >= right_limit:
			bar.position.x = right_limit
			direction = -1
		elif bar.position.x <= left_limit:
			bar.position.x = left_limit
			direction = 1


func _on_kelp_button_pressed() -> void:
	buttonPressed = true;


func _on_success_zone_entered() -> void:
	pass

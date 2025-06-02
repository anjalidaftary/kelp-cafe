extends Sprite2D

@export var bar_speed := 250  # pixels per second
@export var left_limit := 438
@export var right_limit := 670

@onready var bar = $"../MilkBar"
@onready var intersection = $MilkIntersection
@onready var success_zone = $"../MilkSuccessZone"

var isButtonPressed = false
var direction := 1  # 1 = right, -1 = left
var successful = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("spacebar"):
		isButtonPressed = false;
	
	if (isButtonPressed):
		bar.position.x += (direction * bar_speed * delta)
		if bar.position.x >= right_limit:
			bar.position.x = right_limit
			direction = -1
		elif bar.position.x <= left_limit:
			bar.position.x = left_limit
			direction = 1



func _on_milk_button_pressed() -> void:
	isButtonPressed = true
	check_success()


func check_success() -> void:
	var bar_rect = intersection.get_global_rect()
	var zone_rect = success_zone.get_global_rect()
	
	if (bar_rect.intersects(zone_rect)):
		print("success")
	else:
		print("missed")

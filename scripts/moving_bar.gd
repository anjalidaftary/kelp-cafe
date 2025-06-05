extends Sprite2D

@export var bar_speed := 700  # pixels per second
@export var left_limit := 385
@export var right_limit := 785

#@onready var button = $"../KelpButton"
@onready var bar = $"../MovingBar"
@onready var intersection = $Intersection
@onready var success_zone = $"../SuccessZone"
@onready var emptyCup = $"../EmptyBaseCup"
@onready var kelpBaseCup = $"../KelpBaseCup"
@onready var sandBaseCup = $"../SandBaseCup"
@onready var jellyBaseCup = $"../JellyBaseCup"

var done = false

var buttonPressed = false
var direction := 1  # 1 = right, -1 = left
var kelpPressed = false
var successful = false
var sandPressed = false
var moonjellyPressed = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("spacebar"):
		buttonPressed = false;
		check_success1()
		
	if (buttonPressed):
		bar.position.x += direction * bar_speed * delta
		if bar.position.x >= right_limit:
			bar.position.x = right_limit
			direction = -1
		elif bar.position.x <= left_limit:
			bar.position.x = left_limit
			direction = 1





func check_success1() -> void:
	var bar_rect = intersection.get_global_rect()
	var zone_rect = success_zone.get_global_rect()
	
	if (bar_rect.intersects(zone_rect)):
		if (!done):
			emptyCup.queue_free()
			if (kelpPressed):
				kelpBaseCup.visible = true
			elif (sandPressed):
				sandBaseCup.visible = true
			elif (moonjellyPressed):
				jellyBaseCup.visible = true
			print("success")
			successful = true
			done = true
	else:
		print("missed")
		bar.position.x = (385+785)/2
		buttonPressed = false

func _on_kelp_button_pressed() -> void:
	if(!kelpPressed):
		buttonPressed = true;
		emptyCup.visible = true 
		print("kelp pressed")
	kelpPressed = true;
	
func _on_sand_button_pressed() -> void:
	if(!sandPressed):
		print("sand pressed")
		buttonPressed = true
		emptyCup.visible = true
	sandPressed = true;


func _on_moon_jelly_button_pressed() -> void:
	if(!moonjellyPressed):
		print("moonjelly pressed")
		buttonPressed = true;
		emptyCup.visible = true 
	moonjellyPressed = true;

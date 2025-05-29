extends Sprite2D

@export var bar_speed := 200  # pixels per second
@export var left_limit := 385
@export var right_limit := 785

var posOffset : Vector2
@onready var bar = $"../MovingBar"
@onready var success_zone = $"../SuccessZone"

var direction := 1  # 1 = right, -1 = left
var is_stopped := false




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

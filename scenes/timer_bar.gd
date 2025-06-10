extends Sprite2D
@export var bar_speed := 10
@export var left_limit := 393

@onready var timer_bar: Sprite2D = $"."
@onready var bar_collision: ColorRect = $BarCollision
@onready var yellow_zone: ColorRect = $"../YellowZone"
@onready var red_zone: ColorRect = $"../RedZone"

var zone = "green"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer_bar.position.x = 719


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer_bar.position.x >= left_limit:
		timer_bar.position.x -= bar_speed * delta
	
	var bar_rect = bar_collision.get_global_rect()
	var yellow_zone_rect = yellow_zone.get_global_rect()
	var red_zone_rect = red_zone.get_global_rect()
	
	if (bar_rect.intersects(yellow_zone_rect)):
		zone = "yellow"
	elif (bar_rect.intersects(red_zone_rect)):
		zone = "red"
		

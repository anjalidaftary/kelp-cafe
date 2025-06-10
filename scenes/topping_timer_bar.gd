extends Sprite2D

@export var bar_speed := 10
@export var left_limit := 393

@onready var timer_bar: Sprite2D = $TimerBar
@onready var starting_pos = Global.barPos
@onready var bar_collision: ColorRect = $BarCollision
@onready var yellow_zone: ColorRect = $"../YellowZone"
@onready var red_zone: ColorRect = $"../RedZone"

var zone = "green"

func _ready() -> void:
	timer_bar.position.x = starting_pos
	
func _process(delta: float) -> void:
	Global.barPos = timer_bar.positition.x
	if timer_bar.position.x >= left_limit:
		timer_bar.position.x -= bar_speed * delta
	
	var bar_rect = bar_collision.get_global_rect()
	var yellow_zone_rect = yellow_zone.get_global_rect()
	var red_zone_rect = red_zone.get_global_rect()
	
	if (bar_rect.intersects(yellow_zone_rect)):
		zone = "yellow"
	elif (bar_rect.intersects(red_zone_rect)):
		zone = "red"

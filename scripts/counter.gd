extends Node2D
@onready var squid: AnimatableBody2D = $Squid
@onready var fish: AnimatableBody2D = $Fish

var customer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Music.play_music_level()
	if (Global.currSit == 0):
		fish.hide()
		fish.show()
		if randf() < 0.5:
			squid.show()
		else:
			fish.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

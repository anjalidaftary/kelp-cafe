extends Node2D
@onready var squid: AnimatableBody2D = $Squid
@onready var fish: AnimatableBody2D = $Fish
@onready var squidPlayer = $Squid/AnimationPlayer
@onready var fishPlayer = $Fish/PopUp


var customer

func _ready() -> void:
	Music.play_music_level()
	if (Global.currSit == 0):
		fish.hide()
		squid.hide()
		if randf() < 0.5:
			squid.show()
			squidPlayer.play("PopUp")
		else:
			fish.show()
			fishPlayer.play("pop-up")
			

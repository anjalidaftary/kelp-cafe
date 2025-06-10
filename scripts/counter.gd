extends Node2D
@onready var squid: AnimatableBody2D = $Squid
@onready var fish: AnimatableBody2D = $Fish
@onready var squidPlayer = $Squid/AnimationPlayer
@onready var fishPlayer = $Fish/PopUp


var customer

func _ready() -> void:
	Music.play_music_level()
	if (Global.currSit == 0):
		if randf() < 0.5:
			squidPlayer.play("PopUp")
		else:
			fishPlayer.play("pop-up")
			

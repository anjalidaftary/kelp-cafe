extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var fishPlayer = $"../Fish/PopUp"
@onready var fish = $"../Fish"

func _ready():
	if (Global.currSit == 1):
		anim_player.play("exiting")
	if (Global.currSit == 2):
		anim_player.play("exiting")
	Global.currSit = 0

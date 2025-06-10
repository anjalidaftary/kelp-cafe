extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var fishPlayer = $"../Fish/PopUp"
@onready var fish = $"../Fish"

func _ready():
	if (Global.currSit == 1):
		await get_tree().create_timer(3.0).timeout
		anim_player.play("exiting")
	if (Global.currSit == 2):
		await get_tree().create_timer(3.0).timeout
		anim_player.play("exiting")
	Global.currSit = 0

extends AnimatableBody2D

@onready var anim_player = $PopUp
@onready var speech_bubble = $"../SpeechBubble"
@onready var squidAnim = $"../Squid/AnimationPlayer"

func _on_fish_button_2_pressed() -> void:
	speech_bubble.show_order()

func _ready():
	if (Global.currSit == 0):
		anim_player.play("pop-up")
	if (Global.currSit == 1):
		anim_player.play("exit")
		squidAnim.play("PopUp")
	

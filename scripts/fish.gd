extends AnimatableBody2D

@onready var anim_player = $PopUp
@onready var speech_bubble = $"../SpeechBubble"
@onready var squidAnim = $"../Squid/AnimationPlayer"
@onready var sprite = $Sprite2D

func _on_fish_button_2_pressed() -> void:
	speech_bubble.show_order()

func _ready():
	if (Global.currSit == 0):
		anim_player.play("pop-up")
	if (Global.currSit == 1):
		anim_player.play("exit")
		await get_tree().create_timer(0.5).timeout
		squidAnim.play("PopUp")
	if (Global.currSit == 2):
		$Sprite2D.texture = load("res://assets/fish_dead.png")
		anim_player.play("die")
		await get_tree().create_timer(0.5).timeout
		squidAnim.play("PopUp")

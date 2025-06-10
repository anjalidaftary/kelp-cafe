extends AnimatableBody2D

@onready var anim_player = $PopUp
@onready var speech_bubble = $"../SpeechBubble"
@onready var squidAnim = $"../Squid/AnimationPlayer"
@onready var sprite = $Sprite2D

func _on_fish_button_2_pressed() -> void:
	speech_bubble.show_order()

func _ready():
	if (Global.currSit == 1):
		await get_tree().create_timer(3.0).timeout
		anim_player.play("exit")
	if (Global.currSit == 2):
		await get_tree().create_timer(3.0).timeout
		$Sprite2D.texture = load("res://assets/fish_dead.png")
		anim_player.play("die")
	Global.currSit = 0

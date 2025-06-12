extends AnimatableBody2D

@onready var anim_player = $PopUp
@onready var speech_bubble = $"../SpeechBubble"
@onready var squidAnim = $"../Squid/AnimationPlayer"
@onready var sprite = $Sprite2D

func _on_fish_button_2_pressed() -> void:
	speech_bubble.show_order()

func _ready():
	hide()
	if (Global.currSit == 0):
		if (Global.isFish):
			show()
			anim_player.play("pop-up")
	if (Global.currSit == 1):
		if (Global.isFish):
			# await get_tree().create_timer(3.0).timeout
			show()
			# $Sprite2D.texture = load("res://assets/fish_dead.png")
			anim_player.play("exiting")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			await get_tree().create_timer(4.0).timeout
			show()
			anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
	if (Global.currSit == 2):
		if (Global.isFish):
			# await get_tree().create_timer(3.0).timeout
			show()
			$Sprite2D.texture = load("res://assets/fish_dead.png")
			anim_player.play("die")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			await get_tree().create_timer(4.0).timeout
			show()
			anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
	Global.currSit = 0

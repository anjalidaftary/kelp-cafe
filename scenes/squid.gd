extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var fishPlayer = $"../Fish/PopUp"
@onready var fish = $"../Fish"
@onready var speech_bubble = $"../SpeechBubble"
@onready var fish_anim_player: AnimationPlayer = $"../Fish/PopUp"

func _ready():
	hide()
	if (Global.isSquid):
		show()
		if Global.currSit == 0:
			anim_player.play("PopUp")

func _on_speech_button_pressed() -> void:
	if Global.currSit == 0:
		speech_bubble.show_order()
	if (Global.currSit == 1):
		if (Global.isFish):
			fish.show()
			fish_anim_player.play("exit")
			await get_tree().create_timer(2.0).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			show()
			anim_player.play("exiting")
			await get_tree().create_timer(2.0).timeout
			fish.show()
			fish_anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
			
	if (Global.currSit == 2):
		if (Global.isFish):
			fish.show()
			fish_anim_player.play("die")
			await get_tree().create_timer(2.0).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			print("pretend i died")
			show()
			anim_player.play("exiting")
			await get_tree().create_timer(2.0).timeout
			fish.show()
			fish_anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
	Global.currSit = 0

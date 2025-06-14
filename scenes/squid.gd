extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var fishPlayer = $"../Fish/PopUp"
@onready var fish = $"../Fish"
@onready var fish_sprite = $"../Fish/Sprite2D"
@onready var squid_sprite = $Sprite2D
@onready var speech_bubble = $"../SpeechBubble"
@onready var fish_anim_player: AnimationPlayer = $"../Fish/PopUp"

var hasOrdered = false
#
func _ready():
	hasOrdered = false
	#if Global.isSquid:
		#anim_player.play("PopUp")


func _on_speech_button_pressed() -> void:
	if !hasOrdered:
		if Global.currSit == 0:
			speech_bubble.show_order()
			hasOrdered = true
	if (Global.currSit == 1):
		if (Global.isFish):
			await get_tree().create_timer(0.5).timeout
			fish_anim_player.play("exit")
			await get_tree().create_timer(0.5).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			await get_tree().create_timer(0.5).timeout
			anim_player.play("exiting")
			await get_tree().create_timer(0.5).timeout
			fish.show()
			fish_anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
			
	if (Global.currSit == 2):
		if (Global.isFish):
			await get_tree().create_timer(0.5).timeout
			fish_sprite.texture = preload("res://assets/fish_dead.png")
			fish_anim_player.play("exit")
			await get_tree().create_timer(0.5).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			squid_sprite.texture = preload("res://assets/squid_angry.png")
			await get_tree().create_timer(0.5).timeout
			anim_player.play("exiting")
			await get_tree().create_timer(0.5).timeout
			fish.show()
			fish_anim_player.play("pop-up")
			Global.isSquid = false
			Global.isFish = true
	Global.currSit = 0

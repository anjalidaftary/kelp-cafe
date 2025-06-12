extends AnimatableBody2D

@onready var anim_player = $PopUp
@onready var speech_bubble = $"../SpeechBubble"
@onready var squidAnim = $"../Squid/AnimationPlayer"
@onready var sprite = $Sprite2D
@onready var drink = $FinishedOrder

#func _on_fish_button_2_pressed() -> void:
	#if Global.currSit == 0:
		#speech_bubble.show_order()
	#elif (Global.currSit == 1):
		#if (Global.isFish):
			## await get_tree().create_timer(3.0).timeout
			#show()
			#$Sprite2D.texture = load("res://assets/fish_dead.png")
			##await get_tree().create_timer(3.0).timeout
			#anim_player.play("exiting")
			#Global.isFish = false
			#Global.isSquid = true
		#elif (Global.isSquid):
			##await get_tree().create_timer(4.0).timeout
			#show()
			#anim_player.play("pop-up")
			#Global.isSquid = false
			#Global.isFish = true
	#elif (Global.currSit == 2):
		#if (Global.isFish):
			## await get_tree().create_timer(3.0).timeout
			#show()
			#$Sprite2D.texture = load("res://assets/fish_dead.png")
			#anim_player.play("die")
			#Global.isFish = false
			#Global.isSquid = true
		#elif (Global.isSquid):
			##await get_tree().create_timer(4.0).timeout
			#show()
			#anim_player.play("pop-up")
			#Global.isSquid = false
			#Global.isFish = true
	#Global.currSit = 0
	

func _ready():
	if (Global.isFish):
		show()
		if Global.currSit == 0:
			anim_player.play("pop-up")
	

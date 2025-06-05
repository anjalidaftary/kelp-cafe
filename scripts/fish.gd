extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var speech_bubble = $"../SpeechBubble"

func _on_fish_button_2_pressed() -> void:
	speech_bubble.show_order()



func order_success():
	anim_player.play("exit")
	queue_free()
	

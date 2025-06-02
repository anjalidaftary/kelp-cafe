extends TextureButton

@onready var speech_bubble: Panel = $SpeechBubble

func _on_pressed() -> void:
	speech_bubble.show_order()

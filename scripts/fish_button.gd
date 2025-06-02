extends TextureButton

@onready var speech_bubble: Panel = $"../../SpeechBubble"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	speech_bubble.show_order()

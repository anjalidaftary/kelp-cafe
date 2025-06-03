extends Sprite2D
@onready var speech_bubble: Panel = $"../SpeechBubble"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_change_scene_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/base_station.tscn")
	speech_bubble.hide()

extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

func _on_pressed() -> void:
	hide()
	get_tree().change_scene_to_file("res://scenes/base_station.tscn")

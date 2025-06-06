extends Sprite2D

@onready var isJelly = $"../MovingBar"
@onready var newJellyCup = $"../JellyBaseCupAtMilk"

var jellyChosen = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_move_to_milk_button_pressed() -> void:
	if (jellyChosen):
		queue_free()
		newJellyCup.visible = true


func _on_jelly_button_pressed() -> void:
	jellyChosen = true
	GlobalTopping.isJelly = true

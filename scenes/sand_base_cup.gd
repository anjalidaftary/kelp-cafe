extends Sprite2D
@onready var newSandCup = $"../SandBaseCupAtMilk"
@onready var isSand = $"../MovingBar"

var sandChosen = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_move_to_milk_button_pressed() -> void:
	if (sandChosen):
		queue_free()
		newSandCup.visible = true


func _on_sand_button_pressed() -> void:
	sandChosen = true

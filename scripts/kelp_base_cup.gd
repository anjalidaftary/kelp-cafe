extends Sprite2D
@onready var newKelpCup = $"../KelpBaseCupAtMilk"
@onready var isKelp = $"../MovingBar"

var kelpChosen = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_move_to_milk_button_pressed() -> void:
	if (kelpChosen):
		queue_free()
		newKelpCup.visible = true


func _on_kelp_button_pressed() -> void:
	kelpChosen = true
	GlobalTopping.isKelp = true
	

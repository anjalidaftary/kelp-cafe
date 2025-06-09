extends Node

var base
var topping

@onready var isJelly = false
@onready var isKelp = false
@onready var isSand = false

var toppingsAdded = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func orderSuccess():
	print(toppingsAdded)
	var replace = []
	if (toppingsAdded.size() != 2):
		return false
	if (isKelp and base == "kelp"):
		if (toppingsAdded[0] == "seafoam" and toppingsAdded[1] == topping):
			return true
		return false
	elif (isJelly and base == "jelly"):
		if (toppingsAdded[0] == "seafoam" and toppingsAdded[1] == topping):
			return true
		return false
	elif (isSand and base == "sand"):
		if (toppingsAdded[0] == "seafoam" and toppingsAdded[1] == topping):
			return true
		return false
	return false

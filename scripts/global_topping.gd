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
	if (toppingsAdded.length != 2):
		return false
	if (isKelp and base.equals("kelp")):
		if (toppingsAdded[0].equals("seafoam") and toppingsAdded[1].equals(topping)):
			return true
		return false
	elif (isJelly and base.equals("jelly")):
		if (toppingsAdded[0].equals("seafoam") and toppingsAdded[1].equals(topping)):
			return true
		return false
	elif (isSand and base.equals("sand")):
		if (toppingsAdded[0].equals("seafoam") and toppingsAdded[1].equals(topping)):
			return true
		return false
	return false

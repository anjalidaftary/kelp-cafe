extends Node

var askedOrder = []
var madeOrder = []

func check_order(): 
	var is_same = true

	if madeOrder.size() != askedOrder.size():
		is_same = false
	else:
		for i in range(askedOrder.size()):
			if askedOrder[i] != madeOrder[i]:
				is_same = false
				break
	if is_same:
		print("Orders match exactly.")
	else:
		print("Orders do not match.")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

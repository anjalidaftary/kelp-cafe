extends Node

var base
var topping

@onready var isJelly = false
@onready var isKelp = false
@onready var isSand = false

var toppingsAdded = []


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

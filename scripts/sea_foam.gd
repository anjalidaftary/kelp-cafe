extends Sprite2D

var toggled = false;
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _on_foam_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50



func _on_drink_button_pressed() -> void:
	if (toggled):
		GlobalTopping.toppingsAdded.append("seafoam")
		var foamTexture = load("res://assets/sea-foam-topping.PNG")
		drink.add_topping(foamTexture, Vector2(43, -10))
		drink.hasFoam = true
		toggled = false;
		topping.position.y += 50

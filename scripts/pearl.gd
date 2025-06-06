extends Sprite2D

var toggled = false;
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _on_pearl_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50

func _on_drink_button_pressed() -> void:
	if (toggled):
		var pearlTexture = load("res://assets/pearls-topping.PNG")
		drink.add_topping(pearlTexture, Vector2(43, -10))
		toggled = false;
		topping.position.y += 50
	

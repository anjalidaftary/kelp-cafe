extends Sprite2D

var toggled = false;
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _on_caramel_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50
		

func _on_drink_button_pressed() -> void:
	if (toggled):
		var caramelTexture = load("res://assets/caramel-sauce-topping.PNG")
		drink.add_topping(caramelTexture, Vector2(43, -10))

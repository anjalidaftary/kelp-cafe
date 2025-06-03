extends Sprite2D

var toggled = false;
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _on_shell_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50

func _on_drink_button_pressed() -> void:
	if (toggled):
		var shellTexture = load("res://assets/seashells-topping.png")
		drink.add_topping(shellTexture, Vector2(43, -10))

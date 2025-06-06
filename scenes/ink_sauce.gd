extends Sprite2D

var toggled = false
var unlocked = false
var new_texture = load("res://assets/ink-sauce.png")
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func unlock():
	texture = new_texture
	unlocked = true

func _on_ink_button_pressed() -> void:
	if unlocked:
		if (toggled != true): 
			toggled = true;
			topping.position.y -= 50
		else: 
			toggled = false;
			topping.position.y += 50
			

func _on_drink_button_pressed() -> void:
	if (toggled):
		var sauce = load("res://assets/ink-sauce-topping.png")
		drink.add_topping(sauce, Vector2(43, -10))
		toggled = false;
		topping.position.y += 50

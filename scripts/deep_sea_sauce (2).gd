extends Sprite2D

var toggled = false
var unlocked = GlobalUnlockables.deepUnlocked
var new_texture = load("res://assets/deep-sea-sauce.png")
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _ready():
	if (unlocked):
		texture = new_texture

func _on_deep_button_pressed() -> void:
	if unlocked:
		if (toggled != true): 
			toggled = true;
			topping.position.y -= 50
		else: 
			toggled = false;
			topping.position.y += 50
			

func _on_drink_button_pressed() -> void:
	if (toggled):
		var sauce = load("res://assets/deep-sea-sauce-topping.png")
		drink.add_topping(sauce, Vector2(43, -10))
		drink.hasDeep = true
		toggled = false;
		topping.position.y += 50

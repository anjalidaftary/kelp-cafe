extends Sprite2D

var toggled = false
var unlocked = false
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _ready() -> void:
	if GlobalUnlockables.deepUnlocked:
		texture = load("res://assets/deep-sea-sauce.png")
		position.y += 20

func _on_deep_button_pressed() -> void:
	if (GlobalUnlockables.deepUnlocked):
		if (toggled != true): 
			toggled = true;
			topping.position.y -= 50
		else: 
			toggled = false;
			topping.position.y += 50
			

func _on_drink_button_pressed() -> void:
	if (toggled):
		GlobalTopping.toppingsAdded.append("deep")
		var sauce = load("res://assets/deep-sea-sauce-topping.png")
		drink.add_topping(sauce, Vector2(43, -10))
		toggled = false;
		topping.position.y += 50

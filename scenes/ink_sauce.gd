extends Sprite2D

var toggled = false
var unlocked = false
@onready var topping = $"."
@onready var drink = $"../Cup-kelp-milk"

func _ready() -> void:
	if GlobalUnlockables.inkUnlocked:
		texture = load("res://assets/ink-sauce.png")
		position.y -= 22
		position.x += 29
		
	
func _on_ink_button_pressed() -> void:
	if GlobalUnlockables.inkUnlocked:
		if (toggled != true): 
			toggled = true;
			topping.position.y -= 50
		else: 
			toggled = false;
			topping.position.y += 50

func _on_drink_button_pressed() -> void:
	if (toggled):
		GlobalTopping.toppingsAdded.append("ink")
		var sauce = load("res://assets/ink-sauce-topping.png")
		drink.add_topping(sauce, Vector2(43, -10))
		toggled = false;
		topping.position.y += 50

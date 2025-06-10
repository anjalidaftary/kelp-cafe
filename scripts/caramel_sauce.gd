extends Sprite2D

var toggled = false;
@onready var topping = $"."
var cup

func _on_caramel_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50

func _on_drink_button_pressed() -> void:
	if (toggled):
		GlobalTopping.toppingsAdded.append("caramel")
		var caramelTexture = load("res://assets/caramel-sauce-topping.PNG")
		cup.add_topping(caramelTexture, Vector2(43, -10))
		toggled = false;
		topping.position.y += 50

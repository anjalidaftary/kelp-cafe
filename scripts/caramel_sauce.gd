extends Sprite2D

var toggled = false;
@onready var topping = $"."

func _on_caramel_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50
		

func _on_drink_pressed() -> void:
	pass # Replace with function body.

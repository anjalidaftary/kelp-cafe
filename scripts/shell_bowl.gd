extends Sprite2D
var toggled = false;
@onready var topping = $"."

func _on_shell_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50

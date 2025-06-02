extends Sprite2D

var toggled = false;
@onready var topping = $"."
@onready var foam = $"../Cup-kelp-milk/foamContainer"

func _on_foam_button_pressed() -> void:
	if (toggled != true): 
		toggled = true;
		topping.position.y -= 50
	else: 
		toggled = false;
		topping.position.y += 50

func _on_drink_pressed() -> void:
	if (toggled == true):
		var texture_rect = TextureRect.new()
		texture_rect.texture = load("res://assets/sea-foam-topping.PNG")
		texture_rect.expand = true
		texture_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
		foam.add_child(texture_rect)

extends Node2D

@onready var toppings_node = $"Toppings node"

func add_topping(texture: Texture, offset := Vector2.ZERO):
	var topping = Sprite2D.new()
	topping.texture = texture
	topping.position = offset
	topping.scale = Vector2(0.50, 0.50)
	toppings_node.add_child(topping)
	

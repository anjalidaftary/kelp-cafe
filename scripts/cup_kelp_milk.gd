extends Node2D

var currentDrink = []

@onready var toppings_node = $"Toppings node"

func add_topping(texture: Texture, offset := Vector2.ZERO):
	var topping = Sprite2D.new()
	topping.texture = texture
	topping.position = offset
	topping.scale = Vector2(0.50, 0.50)
	toppings_node.add_child(topping)
	toppings_node.move_child(topping, toppings_node.get_child_count() - 1)

func _ready() -> void:
	if (GlobalTopping.isKelp):
		$"Cup-kelp-milk".visible = true
		$"Cup-jelly-milk".visible = false
		$"Cup-sand-milk".visible = false
	elif (GlobalTopping.isJelly):
		$"Cup-kelp-milk".visible = false
		$"Cup-jelly-milk".visible = true
		$"Cup-sand-milk".visible = false
	elif (GlobalTopping.isSand):
		$"Cup-kelp-milk".visible = false
		$"Cup-jelly-milk".visible = false
		$"Cup-sand-milk".visible = true

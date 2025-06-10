extends Node2D

var hasFoam = false
var hasPearl = false
var hasShell = false
var hasCaramel = false
var hasInk = false
var hasDeep = false

var cup

func add_topping(texture: Texture):
	var topping = Sprite2D.new()
	topping.texture = texture
	cup.add_child(topping)
	cup.move_child(topping, cup.get_child_count() - 1)

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

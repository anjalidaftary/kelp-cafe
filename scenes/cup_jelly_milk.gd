extends Sprite2D
var hasFoam = false
var hasPearl = false
var hasShell = false
var hasCaramel = false
var hasInk = false
var hasDeep = false

@onready var toppings_node = $"Toppings node"

func add_topping(texture: Texture, offset := Vector2.ZERO):
	var topping = Sprite2D.new()
	topping.texture = texture
	topping.position = offset
	topping.scale = Vector2(0.50, 0.50)
	toppings_node.add_child(topping)
	toppings_node.move_child(topping, toppings_node.get_child_count() - 1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _ready() -> void:
	pass
	# had to edit this to open; fix

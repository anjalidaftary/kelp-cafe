extends Panel

@onready var symbol_container: HBoxContainer = $HBoxContainer

@onready var fixed_symbols = [
	preload("res://assets/kelp-order-symbol.png"),
	preload("res://assets/foam-order-symbol.png")
]

@onready var random_symbols = [
	preload("res://assets/pearl-order-symbol.png"),
	preload("res://assets/clam-order-symbol.png")
]

func show_order() -> void:
	for child in symbol_container.get_children():
		child.texture = null
	symbol_container.get_child(0).texture = fixed_symbols[0]
	symbol_container.get_child(1).texture = fixed_symbols[1]
	
	var third_symbol = random_symbols.pick_random()
	symbol_container.get_child(2).texture = third_symbol
	
	show()

func _ready() -> void:
	hide()

extends Panel

@onready var symbol_container: HBoxContainer = $HBoxContainer
@onready var scene_button: TextureButton = $"../ChangeSceneButton"

var order

@onready var order_success = []
@onready var order_progress = ["idk", "idk", "idk"]

@onready var fixed_symbols = [
	preload("res://items/kelp.tres"),
	preload("res://items/seafoam.tres")
]

@onready var fixed_symbols_string = [
	"kelp",
	"seafoam"
]

@onready var random_symbols = [
	preload("res://items/pearl.tres"),
	preload("res://items/seashell.tres"),
	preload("res://items/caramel.tres")
]

@onready var random_symbols_string = [
	"pearl",
	"seashell",
	"caramel"
]

func show_order() -> void:
	for child in symbol_container.get_children():
		child.texture = null
	symbol_container.get_child(0).texture = fixed_symbols[0].order_symbol
	symbol_container.get_child(1).texture = fixed_symbols[1].order_symbol
	
	var third_symbol = random_symbols.pick_random()
	symbol_container.get_child(2).texture = third_symbol.order_symbol
	order = [fixed_symbols[0], fixed_symbols[1], third_symbol]
	
	# storing order
	var index = random_symbols.find(third_symbol)
	order_success = [fixed_symbols_string[0], fixed_symbols_string[1], random_symbols_string[index]]
	
	
	show()

func _on_fish_button_2_pressed() -> void:
	show_order()
	

func _on_ready() -> void:
	hide()

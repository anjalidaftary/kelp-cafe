extends Panel

@onready var symbol_container: HBoxContainer = $HBoxContainer
@onready var scene_button: TextureButton = $"../ChangeSceneButton"

#var order
#
#@onready var order_success = []
#@onready var order_progress = ["idk", "idk", "idk"]

@onready var foam_symbol = preload("res://items/seafoam.tres")

@onready var random_toppings = [
	preload("res://items/pearl.tres"),
	preload("res://items/seashell.tres"),
	preload("res://items/caramel.tres"),
	preload("res://items/ink.tres"),
	preload("res://items/deepsea.tres")
]

@onready var random_flavors = [
	preload("res://items/jelly.tres"),
	preload("res://items/kelp.tres"),
	preload("res://items/sand.tres")
]

#@onready var random_symbols_string = [
	#"pearl",
	#"seashell",
	#"caramel"
#]

func _on_ready() -> void:
	hide()

func show_order() -> void:
	for child in symbol_container.get_children():
		child.texture = null
			
	var first_symbol = random_flavors.pick_random()
	var third_symbol = random_toppings.pick_random()
	
	symbol_container.get_child(0).texture = first_symbol.order_symbol
	symbol_container.get_child(1).texture = foam_symbol.order_symbol
	symbol_container.get_child(2).texture = third_symbol.order_symbol
	
	Global.askedOrder = [first_symbol, foam_symbol, third_symbol]
	
	#var order: Array[Topping]  = [first_symbol, foam_symbol, third_symbol]
	#
	#Global.currOrder = order
	
	# storing order idk what this is but you need to fix it
	#var index = random_symbols.find(third_symbol)
	#order_success = [first_symbol, foam_symbol, random_symbols_string[index]]
	
	show()

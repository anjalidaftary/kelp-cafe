extends Panel

@onready var symbol_container: HBoxContainer = $HBoxContainer
@onready var scene_button: TextureButton = $"../ChangeSceneButton"

var order

@onready var order_success = []
@onready var order_progress = ["idk", "idk", "idk"]

@onready var foam_symbol = preload("res://items/seafoam.tres")

@onready var deepsea = preload("res://items/deepsea.tres") #topping
@onready var ink = preload("res://items/ink.tres") #topppings
@onready var sand = preload("res://items/sand.tres") #flavor
@onready var jelly = preload("res://items/jelly.tres") #flavor

@onready var random_toppings = [
	preload("res://items/pearl.tres"),
	preload("res://items/seashell.tres"),
	preload("res://items/caramel.tres")
]

@onready var random_flavors = [
	preload("res://items/kelp.tres")
]

@onready var random_symbols_string = [
	"pearl",
	"seashell",
	"caramel"
]

func _on_ready() -> void:
	hide()

func show_order() -> void:
	for child in symbol_container.get_children():
		child.texture = null
	
	if(GlobalUnlockables.deepUnlocked):
		random_toppings.append(deepsea)
	if(GlobalUnlockables.inkUnlocked):
		random_toppings.append(ink)
	if(GlobalUnlockables.moonJellyUnlocked):
		random_flavors.append(jelly)
	if(GlobalUnlockables.sandUnlocked):
		random_flavors.append(sand)
	var first_symbol = random_flavors.pick_random()
	var third_symbol = random_toppings.pick_random()
	
	symbol_container.get_child(0).texture = first_symbol.order_symbol
	symbol_container.get_child(1).texture = foam_symbol.order_symbol
	symbol_container.get_child(2).texture = third_symbol.order_symbol
	var order: Array[Topping]  = [first_symbol, foam_symbol, third_symbol]
	
	Global.currOrder = order
	
	# storing order idk what this is but you need to fix it
	#var index = random_symbols.find(third_symbol)
	#order_success = [first_symbol, foam_symbol, random_symbols_string[index]]
	
	show()

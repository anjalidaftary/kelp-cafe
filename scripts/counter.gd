extends Node2D
@onready var squid: AnimatableBody2D = $Squid
@onready var fish: AnimatableBody2D = $Fish
@onready var squidPlayer = $Squid/AnimationPlayer
@onready var fishPlayer = $Fish/PopUp
@onready var toppings_node: Node2D = $ToppingsNode

var customer
@onready var drink: Node2D = $FinishedOrder
@onready var kelp: Sprite2D = $FinishedOrder/Kelp
@onready var sand: Sprite2D = $FinishedOrder/Sand
@onready var jelly: Sprite2D = $FinishedOrder/Jelly

func _ready() -> void:
	print("Global.currSit: ", Global.currSit)
	drink.hide()
	Music.play_music_level()
	if (Global.currSit == 0):
		if randf() < 0.5:
			squidPlayer.play("PopUp")
		else:
			fishPlayer.play("pop-up")
			
	if Global.currSit == 1 || Global.currSit == 2:
		print("hello????")
		drink.show()
		if GlobalTopping.isKelp:
			kelp.show()
			sand.hide()
			jelly.hide()
		elif GlobalTopping.isSand:
			sand.show()
			kelp.hide()
			jelly.hide()
		else:
			jelly.show()
			kelp.hide()
			sand.hide()
			
		if GlobalTopping.toppingsAdded.has("seafoam"):
			var foamTexture = load("res://assets/sea-foam-topping.PNG")
			add_topping(foamTexture, Vector2(43, -10))
		if GlobalTopping.toppingsAdded.has("caramel"):
			var caramelTexture = load("res://assets/caramel-sauce-topping.PNG")
			add_topping(caramelTexture, Vector2(43, -10))
		if GlobalTopping.toppingsAdded.has("ink"):
			var sauce = load("res://assets/ink-sauce-topping.png")
			add_topping(sauce, Vector2(43, -10))
		if GlobalTopping.toppingsAdded.has("deep"):
			var sauce = load("res://assets/deep-sea-sauce-topping.png")
			add_topping(sauce, Vector2(43, -10))
		if GlobalTopping.toppingsAdded.has("pearl"):
			var pearlTexture = load("res://assets/pearls-topping.PNG")
			add_topping(pearlTexture, Vector2(43, -10))
		if GlobalTopping.toppingsAdded.has("seashell"):
			var shellTexture = load("res://assets/seashells-topping.png")
			add_topping(shellTexture, Vector2(43, -5))

func add_topping(texture: Texture, offset := Vector2.ZERO):
	if texture == null:
		print("Error: texture is null, cannot create topping")
		return
	var topping = Sprite2D.new()
	topping.texture = texture
	topping.position = offset
	topping.scale = Vector2(0.50, 0.50)
	toppings_node.add_child(topping)
	toppings_node.move_child(topping, toppings_node.get_child_count() - 1)

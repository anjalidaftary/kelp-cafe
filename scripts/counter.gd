extends Node2D
@onready var squid: AnimatableBody2D = $Squid
@onready var fish: AnimatableBody2D = $Fish
@onready var anim_player: AnimationPlayer = $Squid/AnimationPlayer
@onready var fish_anim_player: AnimationPlayer = $Fish/PopUp
@onready var confetti: Node2D = $Confetti
var customer
var cup
@onready var drink: Node2D = $FinishedOrder
@onready var kelp: Sprite2D = $FinishedOrder/Kelp
@onready var sand: Sprite2D = $FinishedOrder/Sand
@onready var jelly: Sprite2D = $FinishedOrder/Jelly

func _ready() -> void:
	#if (Global.currSit == 0):
		#fish.hide()
		#squid.hide()
	print("Global.currSit: ", Global.currSit)
	drink.hide()
	confetti.hide()
	Music.play_music_level()
	#if (Global.currSit == 0 and Global.isFish == false and Global.isSquid == false):
		#Global.isFish = true
		#fishPlayer.play("PopUp")
	#squid.hide()
	#fish.hide()
	if (Global.isSquid):
		#squid.show()
		if Global.currSit == 1 || Global.currSit == 2:
			squid.position.y = -250
		if Global.currSit == 0:
			anim_player.play("PopUp")
	if (Global.isFish):
		#fish.show()
		if Global.currSit == 1 || Global.currSit == 2:
			fish.position.y = 142
		if (Global.currSit == 0):
			fish_anim_player.play("pop-up")
		


func _process(delta: float) -> void:
	pass

func add_topping(texture: Texture):
	var topping = Sprite2D.new()
	topping.texture = texture
	cup.add_child(topping)
	cup.move_child(topping, cup.get_child_count() - 1)


func _on_speech_button_pressed() -> void:
	if(Global.currSit == 1):
		confetti.show()
	if (Global.currSit == 1 || Global.currSit == 2):
		drink.show()
		if GlobalTopping.isKelp:
			cup = kelp
			kelp.show()
			sand.hide()
			jelly.hide()
		elif GlobalTopping.isSand:
			cup = sand
			sand.show()
			kelp.hide()
			jelly.hide()
		else:
			cup = jelly
			jelly.show()
			kelp.hide()
			sand.hide()
			
		if GlobalTopping.toppingsAdded.has("seafoam"):
			var foamTexture = load("res://assets/sea-foam-topping.PNG")
			add_topping(foamTexture)
		if GlobalTopping.toppingsAdded.has("caramel"):
			var caramelTexture = load("res://assets/caramel-sauce-topping.PNG")
			add_topping(caramelTexture)
		if GlobalTopping.toppingsAdded.has("ink"):
			var sauce = load("res://assets/ink-sauce-topping.png")
			add_topping(sauce)
		if GlobalTopping.toppingsAdded.has("deep"):
			var sauce = load("res://assets/deep-sea-sauce-topping.png")
			add_topping(sauce)
		if GlobalTopping.toppingsAdded.has("pearl"):
			var pearlTexture = load("res://assets/pearls-topping.PNG")
			add_topping(pearlTexture)
		if GlobalTopping.toppingsAdded.has("seashell"):
			var shellTexture = load("res://assets/seashells-topping.png")
			add_topping(shellTexture)
		await get_tree().create_timer(1.0).timeout
		drink.hide()
		await get_tree().create_timer(1.0).timeout
		confetti.hide()

extends Control

@onready var money = $"../Money"
@onready var deep = $"Deep Sea Sauce"
@onready var ink = $"Ink Sauce"
@onready var seasaucecross: Sprite2D = $SeaSauceCross
@onready var sandcross: Sprite2D = $SandCross
@onready var inkcross: Sprite2D = $InkCross
@onready var mooncross: Sprite2D = $MoonCross
@onready var deepbutton: TextureButton = $seasaucebutton
@onready var inkbutton: TextureButton = $inkbutton
@onready var sandbutton: TextureButton = $sandbutton
@onready var moonbutton: TextureButton = $moonbutton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


func _on_seasaucebutton_pressed() -> void:
	print("sea sauce button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.deepUnlocked = true
		seasaucecross.show()
		deepbutton.disabled = true
	money.hide() # Replace with function body.


func _on_sandbutton_pressed() -> void:
	print("sand button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.sandUnlocked = true
		sandcross.show()
		sandbutton.disabled = true
	money.hide()


func _on_inkbutton_pressed() -> void:
	print("ink button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.inkUnlocked = true
		inkcross.show()
		inkbutton.disabled = true
	money.hide()


func _on_moonbutton_pressed() -> void:
	print("moon button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.moonJellyUnlocked = true
		mooncross.show()
		moonbutton.disabled = true
	money.hide()

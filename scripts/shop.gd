extends Control

@onready var money = $"../Money"
@onready var deep = $"Deep Sea Sauce"
@onready var ink = $"Ink Sauce"
@onready var seasaucecross = $SeaSauceCross
@onready var sandcross = $SandCross
@onready var inkcross = $InkCross
@onready var mooncross = $MoonCross
@onready var deepbutton = $seasaucebutton
@onready var inkbutton = $inkbutton
@onready var sandbutton = $sandbutton
@onready var moonbutton = $moonbutton

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

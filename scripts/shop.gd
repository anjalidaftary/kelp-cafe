extends Control

@onready var money = $"../Money"
@onready var deep = $"Deep Sea Sauce"
@onready var ink = $"Ink Sauce"
@onready var seasaucecross = $SeaSauceCross
@onready var sandcross = $SandCross
@onready var inkcross = $InkCross
@onready var mooncross = $MoonCross
@onready var deepbutton = $deepPurchaseButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()

func _on_deep_purchase_button_pressed() -> void:
	if money.clams >= 50:
		money.remove(50)
		GlobalUnlockables.deepUnlocked = true
		seasaucecross.show()
		deepbutton.disabled()
		

func _on_ink_purchase_button_pressed() -> void:
	if money.clams >= 50:
		money.remove(50)
		GlobalUnlockables.inkUnlocked = true

extends Control

@onready var inkbutton = $"../InkFudgeButton"
@onready var sandbutton = $"../SandBaseButton"
@onready var moonbutton = $"../JellyBaseButton"
@onready var deepbutton = $"../SeaSauceButton"
@onready var money = $Money


var shop : Node = null
var seasaucecross : Node = null
var inkcross : Node = null
var mooncross : Node = null
var sandcross : Node = null

func _ready():
	shop = get_node_or_null("/root/Game/Shop")
	if shop:
		seasaucecross = shop.get_node_or_null("SeaSauceCross")
		inkcross = shop.get_node_or_null("InkCross")
		mooncross = shop.get_node_or_null("MoonCross")
		sandcross = shop.get_node_or_null("SandCross")
	visible = false


func _on_shop_button_pressed() -> void:
	print("shown")
	show()
	inkbutton.show()
	sandbutton.show()
	moonbutton.show()
	deepbutton.show()


func _on_sea_sauce_button_pressed() -> void:
	print("sea sauce button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.deepUnlocked = true
		seasaucecross.show()
		deepbutton.disabled = true
	money.hide()


func _on_ink_fudge_button_pressed() -> void:
	print("ink button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.inkUnlocked = true
		inkcross.show()
		inkbutton.disabled = true
	money.hide()


func _on_sand_base_button_pressed() -> void:
	print("sand button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.sandUnlocked = true
		sandcross.show()
		sandbutton.disabled = true
	money.hide()


func _on_jelly_base_button_pressed() -> void:
	print("moon button pressed")
	money.show()
	if money.canPurchase(50):
		money.remove(50)
		GlobalUnlockables.moonJellyUnlocked = true
		mooncross.show()
		moonbutton.disabled = true
	money.hide()

func _process(delta: float) -> void:
	if GlobalUnlockables.deepUnlocked:
		seasaucecross.show()
	if GlobalUnlockables.sandUnlocked:
		sandcross.show()
	if GlobalUnlockables.moonJellyUnlocked:
		mooncross.show()
	if GlobalUnlockables.inkUnlocked:
		inkcross.show()

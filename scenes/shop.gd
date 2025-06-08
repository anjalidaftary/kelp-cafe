extends Control
#@onready var shop = get_node("Shop")

#@onready var deepbutton = shop.get_node("seasaucebutton")
#@onready var seasaucecross = shop.get_node("SeaSauceCross")
@onready var inkbutton = $inkbutton
@onready var sandbutton = $sandbutton
@onready var moonbutton = $moonbutton

@onready var money = $Money


var shop : Node = null
var deepbutton : Node = null
var seasaucecross : Node = null
var inkcross : Node = null
var mooncross : Node = null
var sandcross : Node = null

func _ready():
	shop = get_node_or_null("/root/Game/Shop")
	if shop:
		deepbutton = shop.get_node_or_null("seasaucebutton")
		seasaucecross = shop.get_node_or_null("SeaSauceCross")
		inkbutton = shop.get_node_or_null("inkbutton")
		inkcross = shop.get_node_or_null("InkCross")
		moonbutton = shop.get_node_or_null("moonbutton")
		mooncross = shop.get_node_or_null("MoonCross")
		sandbutton = shop.get_node_or_null("sandbutton")
		sandcross = shop.get_node_or_null("SandCross")
	visible = false



func _on_shop_button_pressed() -> void:
	print("shown")
	show()


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

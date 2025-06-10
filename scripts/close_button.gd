extends TextureButton
@onready var shop: Control = $".."
@onready var counter = get_parent().get_parent()
@onready var inkbutton = counter.get_node("InkFudgeButton")
@onready var sandbutton = counter.get_node("SandBaseButton")
@onready var moonbutton = counter.get_node("JellyBaseButton")
@onready var deepbutton = counter.get_node("SeaSauceButton")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	shop.hide()
	inkbutton.hide()
	deepbutton.hide()
	sandbutton.hide()
	moonbutton.hide()
	

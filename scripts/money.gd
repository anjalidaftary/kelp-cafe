extends Control

@onready var clam_label: Label = $Label
var clams = Global.currMoney

func add (num: int):
	Global.currMoney += num
	clam_label.text = str(clams)

func remove (num: int):
	Global.currMoney -= num;
	clam_label.txt = str(clams)

func balance () -> int:
	return clams

func canPurchase (num: int) -> bool:
	return (num <=clams)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	clam_label.text = str(clams)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	clam_label.text = str(clams)
	clams = Global.currMoney

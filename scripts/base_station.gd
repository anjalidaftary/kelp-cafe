extends Node2D

@onready var sandcross = $sandcross
@onready var jellycross = $jellycross
@onready var sandbutton = $SandButton
@onready var jellybutton = $JellyButton
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Music.play_music_level()
	if(GlobalUnlockables.sandUnlocked):
		pass
	else: 
		sandbutton.disabled = true
	if(GlobalUnlockables.moonJellyUnlocked):
		pass
	else:
		jellybutton.disabled = true
	#var order_progress = get_tree().get_root().get_node("SpeechBubble").get("order_progress")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_kelp_button_pressed() -> void:
	
	pass
	#print(order_progress)
	#order_progress.add("kelp")
	#print(order_progress)

func _on_jelly_button_pressed() -> void:
	pass # Replace with function body.

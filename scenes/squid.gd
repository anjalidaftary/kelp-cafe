extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer
@onready var fishPlayer = $"../Fish/PopUp"
@onready var fish = $"../Fish"

func _ready():
	hide()
	if (Global.currSit == 0):
		if (Global.isSquid):
			show()
	if (Global.currSit == 1):
		if (Global.isFish):
			await get_tree().create_timer(4.0).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			# await get_tree().create_timer(3.0).timeout
			show()
			anim_player.play("exiting")
			Global.isSquid = false
			Global.isFish = true
			
	if (Global.currSit == 2):
		if (Global.isFish):
			await get_tree().create_timer(4.0).timeout
			show()
			anim_player.play("PopUp")
			Global.isFish = false
			Global.isSquid = true
		elif (Global.isSquid):
			# await get_tree().create_timer(3.0).timeout
			print("pretend i died")
			show()
			anim_player.play("exiting")
			Global.isSquid = false
			Global.isFish = true
	Global.currSit = 0

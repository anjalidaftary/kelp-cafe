extends Sprite2D
@onready var timer_bar: Sprite2D = $"../TimerBar"

func _on_change_scene_button_pressed() -> void:
	if (!GlobalTopping.orderSuccess()):
		print("order not successful")
		Global.currSit = 2
	else:
		print("order is successful")
		Global.currSit = 1
		if timer_bar.zone == "green":
			print("finished in green")
			Global.currMoney += 50
		elif timer_bar.zone == "yellow":
			print("finished in yellow")
			Global.currMoney += 30
		elif timer_bar.position.x <= 394:
			print("time ran out")
			Global.currMoney += 0
		else:
			print("finished in red")
			Global.currMoney += 10
	get_tree().change_scene_to_file("res://scenes/Counter.tscn")

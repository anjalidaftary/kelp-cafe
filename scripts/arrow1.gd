extends Sprite2D


func _on_change_scene_button_pressed() -> void:
	if (GlobalTopping.orderSuccess()):
		print("order is successful")
		if(Timing.timeElapsed):
			Global.currMoney += 50
		elif(Timing.secElapsed):
			Global.currMoney += int (Timing._getTime())
		Global.currSit = 1
	else:
		print("order not successful")
		Global.currSit = 2
	get_tree().change_scene_to_file("res://scenes/Counter.tscn")

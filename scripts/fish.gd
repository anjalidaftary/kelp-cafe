extends AnimatableBody2D

@onready var anim_player = $AnimationPlayer

func order_success():
	anim_player.play("exit")
	queue_free()
	

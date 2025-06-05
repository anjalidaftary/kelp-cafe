extends AudioStreamPlayer

var level_music = preload("res://assets/When-I-Was-A-Boy(chosic.com).mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
	
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(level_music)

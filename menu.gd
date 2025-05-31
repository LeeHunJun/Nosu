extends Control

func _ready():
	$VBoxContainer/Play.pressed.connect(_on_play_pressed)
	$VBoxContainer/Exit.pressed.connect(_on_exit_pressed)
	
func _on_play_pressed():
	get_tree().change_scene_to_file("res://object/music_player.tscn")
	
func _on_exit_pressed():
	get_tree().quit()

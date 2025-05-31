extends Control

func _ready():
	$VBoxContainer/TooBad.pressed.connect(_on_TooBad_pressed)
	$VBoxContainer/Pretender.pressed.connect(_on_Pretender_pressed)
	
func _on_TooBad_pressed():
	get_tree().change_scene_to_file("res://level/TooBadPlay.tscn")
	
func _on_Pretender_pressed():
	get_tree().change_scene_to_file("res://level/PretenderPlay.tscn")

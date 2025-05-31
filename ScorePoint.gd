extends CanvasLayer

@onready var retry = $Panel/Button
@onready var quit = $Panel/Button2

func _ready() -> void:
	retry.pressed.connect(_on_retry_pressed)
	quit.pressed.connect(_on_quit_pressed)
	visible = false
	
func pausegame():
	visible = true
	get_tree().paused = true
func clearGame():
	$Panel/Label.text = "score: " + str(get_parent().get_node("GameUI").score) + "!!!"
	visible = true
	get_tree().paused = true
	
func retrygame():
	visible = false
	get_tree().paused = false
	get_tree().reload_current_scene()
	
func _on_retry_pressed():
	retrygame()
	
func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://object/menu.tscn")

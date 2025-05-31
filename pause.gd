extends CanvasLayer

@onready var resume = $Panel/Button
@onready var quit = $Panel/Button2

func _ready() -> void:
	resume.pressed.connect(_on_resume_pressed)
	quit.pressed.connect(_on_quit_pressed)
	visible = false
	
func _process(delta):
	if Input.is_action_just_pressed("cancel"):
		if visible:
			resumegame()
		else:
			pausegame()
			
func pausegame():
	visible = true
	get_tree().paused = true
	
func resumegame():
	visible = false
	get_tree().paused = false
	
func _on_resume_pressed():
	resumegame()
	
func _on_quit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://object/menu.tscn")

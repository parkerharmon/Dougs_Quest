extends Control

@onready var selector_one = $MarginContainer/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
@onready var selector_two = $MarginContainer/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
@onready var selector_three = $MarginContainer/CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector

var current_selection = 0
func _ready():
	set_current_selection(0)
	
func _process(_delta):
	if Input.is_action_just_pressed("down") and current_selection < 2:
		current_selection += 1
		set_current_selection(current_selection)
	if Input.is_action_just_pressed("up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
	if Input.is_action_just_pressed("select"):
		if current_selection == 0:
			pass
		if current_selection == 1:
			pass
		if current_selection == 2:
			get_tree().quit()
			
	
func set_current_selection(_current_selection):
	selector_one.text = ""
	selector_two.text = ""
	selector_three.text = ""
	if _current_selection == 0:
		selector_one.text = ">"
	if _current_selection == 1:
		selector_two.text = ">"
	if _current_selection == 2:
		selector_three.text = ">"	



func _on_play_pressed():
	pass


func _on_options_pressed():
	pass


func _on_exit_pressed():
	get_tree().quit()

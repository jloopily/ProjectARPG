extends Node2D

func _unhandled_input(event):
	if Input.is_action_just_pressed("pause"):
		get_tree().change_scene("res://Welcome/Welcome.tscn")
		
	if Input.is_action_just_pressed("zanting"):
		get_tree().paused = true
		$CanvasLayer/pause_Popup.show()
		
func _on_Button_pressed():
	$CanvasLayer/pause_Popup.hide()
	get_tree().paused = false

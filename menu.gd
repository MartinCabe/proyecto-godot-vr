extends Control

func _on_button_play_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")

func _on_button_info_pressed() -> void:
	get_tree().change_scene_to_file("res://menu-info.tscn")

func _on_button_exit_pressed() -> void:
	get_tree().quit()

extends Node


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://escena/Level1.tscn")


func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://escena/Level2.tscn")

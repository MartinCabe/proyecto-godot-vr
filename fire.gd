extends Node3D

signal hit

func _on_area_3d_area_entered(area: Area3D) -> void:
	queue_free()
	hit.emit()

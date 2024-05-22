extends XRCamera3D

var ray_range = 2000

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("shoot"):
		get_camera_collision()
		
func get_camera_collision():
	var center = get_viewport().get_visible_rect().size / 2
	var ray_origin = project_ray_origin(center)
	var ray_end = ray_origin + project_ray_normal(center) * ray_range
	var new_intersection = PhysicsRayQueryParameters3D.create(ray_origin, ray_end)
	new_intersection.collide_with_areas = true
	new_intersection.collision_mask = 2
	var intersection = get_world_3d().direct_space_state.intersect_ray(new_intersection)
	if not intersection.is_empty():
		print(intersection.collider.name)
	else:
		print("Nothing")

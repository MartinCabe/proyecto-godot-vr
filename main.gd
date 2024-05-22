extends Node3D

var xr_interface: XRInterface

func _ready():
	# Configurar VR, no funciona en Godot 4.2
	xr_interface = XRServer.find_interface("Native mobile")
	if xr_interface and xr_interface.initialize():
		print("VR initialized successfully")

		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)

		get_viewport().xr = true
	else:
		print("VR not initialized")

func _physics_process(delta: float) -> void:
	# Mover camion por camino
	const move_speed := 4.0
	%PathFollow3D.progress += move_speed * delta

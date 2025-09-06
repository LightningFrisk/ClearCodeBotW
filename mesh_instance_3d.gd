extends MeshInstance3D

func _ready() -> void:
	var material = mesh.surface_get_material(0)
	material.albedo_color = Color.BLUE
	
	mesh.outer_radius = 6

func _physics_process(delta: float) -> void:
	#rotate_y(0.01)
	rotation_degrees += Vector3(0,1,0)
	scale += Vector3(2,2,2)*delta

extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%TileMapLayerInvisible.visible = false
	pass # Replace with function body.


func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			var cell_coords = %TileMapLayer.local_to_map(%TileMapLayer.get_local_mouse_position())
			%TileMapLayer.erase_cell(cell_coords)
		
			cell_coords = %TileMapLayerInvisible.local_to_map(%TileMapLayerInvisible.get_local_mouse_position())
			%TileMapLayerInvisible.erase_cell(cell_coords)
			
			

func _on_area_2d_body_entered(body: Node2D) -> void:
	$CharacterBody2D/Camera2D/Label.visible = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$CharacterBody2D/Camera2D/Label.visible = false

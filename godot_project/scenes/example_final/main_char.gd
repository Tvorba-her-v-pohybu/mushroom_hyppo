extends CharacterBody2D


@export var SPEED = 300.0


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED

	move_and_slide()


func _on_finish_body_entered(body: Node2D) -> void:
	$"../CanvasLayer/Control/Label".visible = true

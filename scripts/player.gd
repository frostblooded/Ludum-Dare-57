class_name Player
extends CharacterBody2D

@export var movement_speed: float = 200.0

func _physics_process(_delta: float) -> void:
    var input_vector = Vector2.ZERO

    if Input.is_action_pressed("move_right"):
        input_vector.x += 1

    if input_vector != Vector2.ZERO:
        input_vector = input_vector.normalized()

    velocity.x = input_vector.x * movement_speed
    velocity.y = Settings.gravity
    move_and_slide()

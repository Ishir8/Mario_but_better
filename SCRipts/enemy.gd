extends Node2D


# Called when the node enters the scene tree for the first time.
const speed = 60

var direction = 1

@onready var raycast_right: RayCast2D = $Killzone/RaycastRight
@onready var raycast_left: RayCast2D = $Killzone/RaycastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_left.is_colliding(): 
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction*speed*delta

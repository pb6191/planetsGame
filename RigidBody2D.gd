extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$".".position.x = $"../Sprite".position.x
	$".".position.y = 500
	$".".rotation_degrees = 0
	$".".set_linear_velocity(Vector2(0, -300))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".rotation_degrees = 90 + rad2deg(($".".get_linear_velocity()).angle())




extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var myMiss
var myMissiles = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _input(event):
	if event is InputEventMouseMotion:
		$".".position.x = event.position.x
	if event.is_action_pressed("leftClk"):
		myMiss = $"../RigidBody2D".duplicate()
		myMiss.visible = true
		myMissiles.append(myMiss)
		var lastLocn = myMissiles.size()
		$"..".add_child(myMissiles[lastLocn-1])

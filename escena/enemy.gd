extends RigidBody2D

@onready var game_manager = %GameManager

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		var x_delta = position.x - body.position.x
		if (y_delta > 400):
			print("destroy enemy")
			queue_free()
			body.jump()
		else:
			print("Decrease player healt")
			game_manager.decrease_health()
			if(x_delta > 0 ):
				body.jump_side(-1000)
			else:
				body.jump_side(1000)

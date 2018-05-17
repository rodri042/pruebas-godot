extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if self.linear_velocity.y > 300:
		self.linear_velocity.y = 300
		
	if self.linear_velocity.y < -300:
		self.linear_velocity.y = -300
	

func _on_InputHandler_SwipeOccurred(direction, speed):
	print(direction, speed)
	self.apply_impulse(Vector2(0, 0), direction * 300)

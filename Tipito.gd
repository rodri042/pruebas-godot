extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if self.linear_velocity.y > 500:
		self.linear_velocity.y = 500
		
	if self.linear_velocity.y < -500:
		self.linear_velocity.y = -500
	

func _on_InputHandler_SwipeOccurred(direction, speed):
	print(direction, speed)
	
	var gravity = Physics2DServer.area_get_param(get_world_2d().get_space(),Physics2DServer.AREA_PARAM_GRAVITY*2)
	self.apply_impulse(Vector2(0, 0), direction * gravity)

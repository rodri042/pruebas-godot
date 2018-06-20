extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var gravity = Physics2DServer.area_get_param(get_world_2d().get_space(),Physics2DServer.AREA_PARAM_GRAVITY*2)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if self.linear_velocity.y > gravity:
		self.linear_velocity.y = gravity
		
	if self.linear_velocity.y < -gravity:
		self.linear_velocity.y = -gravity


func _on_InputHandler_SwipeOccurred(direction, speed):
	self.apply_impulse(Vector2(0, 0), direction * gravity)
	#$Icono.set_flip_h(direction.x < 0)
	if direction.x < 0:
		$shape1.set_scale(Vector2(-1,1))
		$shape2.set_scale(Vector2(-1,1))
		$shape3.set_scale(Vector2(-1,1))
	else:
		$shape1.set_scale(Vector2(-1,-1))
		$shape2.set_scale(Vector2(-1,-1))
		$shape3.set_scale(Vector2(-1,-1))
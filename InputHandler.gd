extends Node
signal SwipeOccurred

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var is_doing_swipe = false
var initial_position = null

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _input(event):
	event = owner.make_input_local(event)
	
	if event is InputEventMouseButton:
		if !self.is_doing_swipe && event.pressed:
			self.is_doing_swipe = true
			self.initial_position = event.position
		
		if self.is_doing_swipe && !event.pressed:
			self.is_doing_swipe = false
			var movement = event.position - self.initial_position
			
			var direction = movement.normalized()
			var speed = movement.length()
			
			emit_signal("SwipeOccurred", direction, speed)
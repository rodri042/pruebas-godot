extends Area2D
signal CoinTaken

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var isTaken = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_coin_body_entered(body):
	if isTaken: return
	
	isTaken = true
	#$sound.play()
	visible = false
	emit_signal("CoinTaken")


func _on_sound_finished():
	queue_free()
	pass # replace with function body

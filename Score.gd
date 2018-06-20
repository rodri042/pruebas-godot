extends Node2D

export var score = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	$label.text = "Tortitas: %s" % score

func sumaUno():
	score = score + 1
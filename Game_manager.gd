extends Node
@onready var points_label = %pointsLabel


var points = 0

func add_point():
	points +=1
	# print(points)
	points_label.text = "Puntos: " + str(points)

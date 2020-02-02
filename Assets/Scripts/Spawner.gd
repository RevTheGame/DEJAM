extends Node2D
export (int) var numOfToasters
export (Vector2) var posRange
onready var toaster = load("res://Assets/Scenes/Toaster.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TriggerToasters_body_entered(body):
#	$TriggerToasters.get_parent().remove_child($TriggerToasters)
#	var simpleArray = []
#	for i in range(numOfToasters):
#		var a = toaster.instance()
#		while simpleArray.count(a) > 2:
#			a.set_position(Vector2(randi() * 5000 + 500, randi()* 5000 + 500))
#		simpleArray.append(a.position)
#		a
#		add_child(a)
#		print(a)
	pass # Replace with function body.


func _on_Timer_timeout():
	var simpleArray = []
	for i in range(numOfToasters):
		var a = toaster.instance()
		while simpleArray.count(a) > 2:
			a.set_position(Vector2(randi() * 2000 + 500, randi()* 2000 + 500))
		simpleArray.append(a.position)
		add_child(a)
	pass # Replace with function body.

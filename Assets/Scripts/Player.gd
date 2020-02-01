extends KinematicBody2D

export (int) var moveSpeed = 100
var GRAVITY = 9.8
var velocity = Vector2()
var xHandPos = 96
var yHandPos = 82



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func play_anim(var animToPlay):
	if !$AnimatedSprite.is_playing():
		$AnimatedSprite.play(animToPlay)
		
		
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right_hand"):
		$RightHand.show()
		$RightHand.set_position(Vector2(xHandPos,yHandPos))
	else:
		$RightHand.hide()
		$RightHand.set_position(Vector2.ZERO)
	if Input.is_action_pressed("left_hand"):
		$LeftHand.show()
		$LeftHand.set_position(Vector2(-xHandPos,yHandPos))
	else:
		$LeftHand.hide()
		$LeftHand.set_position(Vector2.ZERO)
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		play_anim("default")
	elif Input.is_action_pressed("down"):
		velocity.y += 1
		play_anim("default")
	elif Input.is_action_pressed("left"):
		velocity.x -= 1
		play_anim("default")
		$AnimatedSprite.set_flip_h(true)
	elif Input.is_action_pressed("right"):
		velocity.x += 1
		play_anim("default")
		$AnimatedSprite.set_flip_h(false)
	else:
		$AnimatedSprite.stop()
	velocity *= moveSpeed
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input()
	move_and_slide(velocity)

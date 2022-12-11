extends KinematicBody2D

onready var _animated = $AnimatedSprite
onready var _feets_animated = $AnimatedFeetsSprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var SPEED = 100

func set_idle_state(gun = "knife"):
	_animated.play(gun + "_idle")
	_feets_animated.play("idle")
	
func set_move_state(gun = "knife"):
	_animated.play(gun + "_move")
	_feets_animated.play("move")

func _process(delta):
	var velocity = Vector2(0,0)
	
	if Input.is_key_pressed(KEY_D):
		velocity = Vector2(SPEED,0)
		set_move_state()
		
	move_and_slide(velocity,Vector2(0,0))

# Called when the node enters the scene tree for the first time.
func _ready():
	set_idle_state()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

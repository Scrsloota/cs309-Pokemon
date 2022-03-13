extends Position2D

onready var anim = $AnimationPlayer
onready var ball = $Ball
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	ball.visible = false
	recived_signal()
	pass # Replace with function body.

func recived_signal():
	self.visible = true
	play_growth()

func play_growth():
	ball.visible = true
	anim.queue("growth")
	emit_signal("animation_finished", "gowth")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AnimationPlayer_animation_finished(anim_name):
	ball.visible = false
	pass # Replace with function body.
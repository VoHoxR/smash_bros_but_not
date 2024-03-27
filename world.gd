extends Node2D
@onready var noseenomove = $noseenomove
@onready var player = $player
@onready var label = $"Control/Panel/Ze Timer2"
@onready var timer = $Control/Panel/Timer2
func _ready():
	timer.start()
	noseenomove.visible = false
	
func _process(delta):
	label.text = str(round(timer.time_left))
	if int(timer.time_left) == 7:
		noseenomove.visible = true
	


func _on_timer_2_timeout():
	noseenomove.visible = false
	if player.is_hiding == false:
		get_tree().quit()
	else:
		timer.start()

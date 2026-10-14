extends Node2D


var score = 0

func increase_score():
	score += 1
	$ScoreLabel.text = "Score: "+str(score)
	var new_x = randi_range(100,1000)
	var new_y = randi_range(100,500)
	$Button.position = Vector2(new_x,new_y)


func game_over():
	$ScoreLabel.text = "Time's up! Final score: "+str(score)
	$Button.visible = false
	$TimeLabel.visible = false

func _process(delta:float) -> void:
	update_time_label()

func update_time_label():
	var time_left = int($Timer.get_time_left())
	$TimeLabel.text = "Time: "+str(time_left)

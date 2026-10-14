extends Node2D

var score = 0

func _process(delta: float) -> void:
	update_time_label(int($Timer.get_time_left()))

func update_time_label(time:int):
	$TimeLabel.text = "Time : "+str(time)

func taget_clicked():
	increase_score()
	move_target()


func increase_score():
	score+=1
	$ScoreLabel.text = "Score: "+str(score)


func move_target():
	var random_x = randi_range(100,1100)
	var random_y = randi_range(100,500)
	$Target.position = Vector2(random_x,random_y)


func times_out():
	hide_unneeded_nodes()
	present_final_score()

	
func present_final_score():
	$ScoreLabel.text = "Final score: "+str(score)
	$ScoreLabel.position = Vector2(400,250)

func hide_unneeded_nodes():
	$Target.visible = false
	$TimeLabel.visible = false

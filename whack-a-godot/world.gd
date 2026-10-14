extends Node2D

var max_health = 100
var current_health = 100
var potions_remainting = 3
var potion_strength = 40

func _ready():
	take_damage(70)
	print(get_status())
	drink_potion()
	print(get_status())
	take_damage(200)
	print(get_status())
	print(is_alive())
	pass


func get_status():
	var hp_string = "HP: "+str(current_health)+"/"+str(max_health)
	var potion_count_string = "Potions: "+str(potions_remainting)
	return hp_string+" | "+potion_count_string

func take_damage(amount:int):
	current_health = clamp(current_health-amount, 0, max_health)

func drink_potion():
	potions_remainting -= 1
	current_health = clamp(current_health + potion_strength, 0, max_health)

func is_alive():
	return "Alive: "+str(current_health > 0)

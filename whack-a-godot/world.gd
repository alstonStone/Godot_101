extends Node2D


func _ready():
	print_greeting("Your Name")
	print_farewell()


func make_pancakes():
	make_batter()


func make_batter():
	print("Making batter!")


func print_greeting(name:String):
	print("Hello, "+name)

func print_farewell():
	print("Goodbye!")

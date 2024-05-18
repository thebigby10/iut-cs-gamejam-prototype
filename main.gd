extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#Vars.balance = 5000	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$balance.set_text("BALANCE: " + str(Vars.balance))
	$reputation_bar.value = Vars.reputation
	pass


func _on_shutdown_pressed():
	get_tree().change_scene_to_file("res://shutdown.tscn")
	pass # Replace with function body.


func _on_create_pressed():
	get_tree().change_scene_to_file("res://create.tscn")
	pass # Replace with function body.

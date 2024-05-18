extends Node2D

var random = RandomNumberGenerator.new()
var isPressed = false
var sell_price = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$balance.set_text("BALANCE: " + str(Vars.balance))
	$reputation_bar.value = Vars.reputation
	$price.set_text("$"+str(sell_price))
	if Vars.balance == 0:
		get_tree().change_scene_to_file("res://bankrupcy.tscn")
	if Vars.reputation < 30:
		get_tree().change_scene_to_file("res://shop_shutdown.tscn")
	pass


func _on_shutdown_pressed():
	get_tree().change_scene_to_file("res://shutdown.tscn")
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
	pass # Replace with function body.

func show_animation():
	#add game creation animation
	pass

func _on_balance_pressed():
	$card._ready()
	$card.hide()
	$shutdown.hide()
	$generate.hide()
	$balance.hide()
	$back.hide()
	$sell.hide()
	$price.hide()
		
	show_animation()
		
	$card.show()
	$shutdown.show()
	$generate.show()
	$balance.show()
	$back.show()
	$sell.show()
	$price.show()
	Vars.balance  =  max(0, Vars.balance-random.randi_range(500, 3000))
	sell_price = random.randi_range(1000,5000) * ($card.overall_score)/100
	pass # Replace with function body.

func sell_animation():
	pass
	
func _on_sell_pressed():
	Vars.balance+=sell_price
	Vars.reputation = (Vars.reputation + $card.overall_score)/2
	#get_tree().change_scene_to_file("res://main.tscn")
	$sell.hide()
	$price.hide()
	pass # Replace with function body.

extends Node2D

var random = RandomNumberGenerator.new()

var graphics_score = random.randi_range(0,100)
var gameplay_score = random.randi_range(0,100)
var sound_score = random.randi_range(0,100)
var story_score = random.randi_range(0,100)
var compatblity_score = random.randi_range(0,100)
var marketing_score = random.randi_range(0,100)
var overall_score = int((graphics_score + gameplay_score + sound_score + story_score + compatblity_score + marketing_score) / 6)

var game_name_first = ["Abjure", "Dangerouus", "Future", "Assassin", "Pirate", "Computer"]
var game_name_last = ["Fish", "Board", "Jackpot"]

# Called when the node enters the scene tree for the first time.
func _ready():
	#update
	graphics_score = random.randi_range(0,100)
	gameplay_score = random.randi_range(0,100)
	sound_score = random.randi_range(0,100)
	story_score = random.randi_range(0,100)
	compatblity_score = random.randi_range(0,100)
	marketing_score = random.randi_range(0,100)
	overall_score = int((graphics_score + gameplay_score + sound_score + story_score + compatblity_score + marketing_score) / 6)
	#update base
	var texture = "res://Resources/base_"+str(random.randi_range(1,6))+".png" 
	$base.texture = load(texture)
	#update logo
	texture = "res://Resources/logo_"+str(random.randi_range(1,6))+".png" 
	$logo.texture = load(texture)
	#update name
	$name.set_text(game_name_first[random.randi_range(0,len(game_name_first)-1)] + " " + game_name_last[random.randi_range(0,len(game_name_last)-1)])
	#$name.set_text("Abjure board")
	#update specs
	$graphics_bar.value = graphics_score
	$gameplay_bar.value = gameplay_score
	$sound_bar.value = sound_score
	$story_bar.value = story_score
	$compatiblity_bar.value = compatblity_score
	$marketing_bar.value = marketing_score
	$overall_bar.value = overall_score
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

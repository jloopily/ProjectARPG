extends Control

var hearts = 4 setget set_hearts
var max_hearts = 4 setget set_max_hearts

onready var heartFull = $HeartFull
onready var heartEmpty = $HeartEmpty

func set_hearts(value):
	hearts = clamp(value, 0, max_hearts)
	if heartFull != null:
		heartFull.rect_size.x = hearts * 15

func set_max_hearts(value):
	max_hearts = max(value, 1)
	if heartEmpty != null:
		heartEmpty.rect_size.x = max_hearts * 15

func _ready():
	self.max_hearts = Playerstats.max_health
	self.hearts = Playerstats.health
	Playerstats.connect("health_change", self, "set_hearts")

extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false;

func _on_area_entered(area):
	self.visible = true;

func _on_area_exited(area):
	self.visible = false;

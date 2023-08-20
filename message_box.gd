extends CanvasLayer

@onready var texture_rect = $VBoxContainer/NinePatchRect/MarginContainer/HBoxContainer/TextureRect
@onready var label = $VBoxContainer/NinePatchRect/MarginContainer/HBoxContainer/Label
@onready var name_label = $VBoxContainer/NinePatchRect2/MarginContainer/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setMessage(message):
	label.text = message;

func setImage(image):
	texture_rect.texture = image;
	
func setName(name):
	name_label.text = name;

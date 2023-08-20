extends StaticBody2D
class_name Sign

@export var message = "";
@export var message_name = "";
@export var image : Texture2D = null;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func showMessage():
	PlayerMessage.setMessage(message);
	PlayerMessage.setImage(image);
	PlayerMessage.setName(message_name);
	PlayerMessage.visible = true;

func hideMessage():
	PlayerMessage.visible = false;

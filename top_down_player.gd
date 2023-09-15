extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -400.0

@onready var interact_bubble = $InteractBubble
@onready var gun = $Gun

# Get the gravity from the project settings to be synced with RigidBody nodes.
# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var canMove = true;


func _process(delta):
	
	# Movement
	if(canMove):
		var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
		velocity = direction * SPEED;
	
	# Interact events
	if(Input.is_action_just_pressed("ui_accept")):
		if(interact_bubble.visible):
			var curAreas = interact_bubble.get_overlapping_areas();
			if(curAreas.size() > 0):
				if(curAreas[0].get_parent() is Sign):
					var nearestSign = curAreas[0].get_parent() as Sign;
					if(canMove):
						nearestSign.showMessage();
						velocity = Vector2(0, 0);
						canMove = false;
					else:
						nearestSign.hideMessage();
						canMove = true;
	
	# Gun Positioning
	var mouseRay = (get_local_mouse_position()).normalized();
	gun.position = (mouseRay * 10);
	gun.rotation = get_angle_to(get_global_mouse_position());

	move_and_slide();

func _draw():
	pass;

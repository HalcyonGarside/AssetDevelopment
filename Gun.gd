extends Sprite2D

var damage = 0;
@export var projectile : PackedScene;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("shoot")):
		self.shoot(get_global_mouse_position());


func updateGunData(gunData : GunData):
	self.texture = gunData.image;
	self.damage = gunData.hit_damage;
	pass

func shoot(direction):
	var b = self.projectile.instantiate();
	add_child(b);
	b.transform.origin = self.transform.origin;
	print_debug(b.transform.origin);
	b.constant_linear_velocity = direction.normalized();
	pass

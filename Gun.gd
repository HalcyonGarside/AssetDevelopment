extends Sprite2D

var damage = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	pass


func updateGunData(gunData : GunData):
	self.texture = gunData.image;
	self.damage = gunData.hit_damage;
	pass

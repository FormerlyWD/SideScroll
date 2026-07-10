extends WeaponBehavior
class_name NormalGunBehavior


func activate_weapon():
	generate_bullet()


func generate_bullet():
	$BulletOutput.generate_bullet()
	
	

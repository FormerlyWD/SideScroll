extends WeaponBehavior
class_name NormalGunBehavior


@export var weapon_data:GunPatternWeaponData
@export var stat_component:StatComponent 

func generate_bullet():
	$BulletOutput.generate_bullet()
	
	

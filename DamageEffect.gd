extends Effect
class_name DamageEffect

func play(targeting: TargetingApi) -> bool:
	await targeting.pick_enemy()
	return false

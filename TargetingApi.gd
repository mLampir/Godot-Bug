extends RefCounted

class_name TargetingApi

signal _cancelled()

func cancel_targeting() -> void:
	_cancelled.emit()

func pick_enemy() -> Variant:
	var enemy = await _cancelled
	return enemy

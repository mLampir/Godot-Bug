extends RefCounted

class_name TargetingApi

signal _cancelled()

enum Mode { NONE, ENEMIES }

var _mode: Mode = Mode.NONE

func is_targeting() -> bool:
	return _mode != Mode.NONE

func enable_enemy_targeting() -> void:
	_mode = Mode.ENEMIES

func cancel_targeting() -> void:
	_cancelled.emit()

func _disable_targeting():
	_mode = Mode.NONE

func pick_enemy() -> Variant:
	enable_enemy_targeting()
	var enemy = await _cancelled
	_disable_targeting()
	return enemy

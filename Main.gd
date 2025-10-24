extends Control

@onready var await_button := $AwaitButton
@onready var release_button := $ReleaseButton

var abstract: BaseClass = InheritedClass.new()
func _ready() -> void:
	await_button.pressed.connect(_await)
	release_button.pressed.connect(_release)

func _await() -> void:
	@warning_ignore("redundant_await")
	var res_v := await abstract.get_bool()
	print("These are the incorrect booleans")
	print(res_v == true)
	print(res_v == true)
	print(res_v == true)
	print(res_v == true)
	var result: bool = bool(res_v)
	print("These are the correct booleans")
	print(result == true)
	print(result == true)
	print(result == true)
	print(result == true)
	

func _release() -> void:
	abstract.release_bool.emit()

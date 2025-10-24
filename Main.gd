extends Control

var targeting_api: TargetingApi = TargetingApi.new()

@onready var button := $Button

var effect: Effect = DamageEffect.new()
var targeting := false

func _ready() -> void:
	button.pressed.connect(_on_card_toggled)

func _on_card_toggled() -> void:
	if targeting:
		targeting_api.cancel_targeting()
		targeting = false
		return

	button.text = "Playing..."
	targeting = true

	@warning_ignore("redundant_await")
	var res_v := await effect.play(targeting_api)
	print(res_v == true)
	print(res_v == true)
	print(res_v == true)
	print(res_v	 == true)
	var result: bool = bool(res_v)

	if not result:
		button.text = "Cancelled"

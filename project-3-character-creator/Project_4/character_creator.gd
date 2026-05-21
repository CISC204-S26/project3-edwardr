extends Control

@onready var head = $Head
@onready var body = $Body
@onready var legs = $Legs

var colors = [
	Color.RED,
	Color.YELLOW,
	Color.WHITE,
	Color.BLUE,
	Color.GREEN,
	Color.PURPLE,
	Color.ORANGE
]

var head_index = 0
var body_index = 1
var legs_index = 2

func _ready():
	update_colors()

func update_colors():
	head.color = colors[head_index]
	body.color = colors[body_index]
	legs.color = colors[legs_index]

func _on_head_left_pressed():
	head_index -= 1
	if head_index < 0:
		head_index = colors.size() - 1
	update_colors()

func _on_head_right_pressed():
	head_index += 1
	if head_index >= colors.size():
		head_index = 0
	update_colors()

func _on_body_left_pressed():
	body_index -= 1
	if body_index < 0:
		body_index = colors.size() - 1
	update_colors()

func _on_body_right_pressed():
	body_index += 1
	if body_index >= colors.size():
		body_index = 0
	update_colors()

func _on_legs_left_pressed():
	legs_index -= 1
	if legs_index < 0:
		legs_index = colors.size() - 1
	update_colors()

func _on_legs_right_pressed():
	legs_index += 1
	if legs_index >= colors.size():
		legs_index = 0
	update_colors()

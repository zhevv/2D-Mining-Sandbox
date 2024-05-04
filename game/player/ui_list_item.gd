extends PanelContainer
class_name UIListItem

signal selected

@onready var label = $MarginContainer/Label

var available: bool= false



func _on_gui_input(event):
	if not available: return
	
	if event is InputEventMouseButton:
		if event.pressed:
			select()


func select():
	modulate= Color.WHITE
	selected.emit()


func deselect():
	modulate= Color.WEB_GRAY


func update(player: BasePlayer):
	label.modulate= Color.WHITE if available else Color.RED

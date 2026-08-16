extends LineEdit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var reg = RegEx.create_from_string(">ROTATE\\(\\d,\\d\\.\\d\\)")
var re = RegEx.create_from_string(">ROTATE")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_text_changed(new_text: String) -> void:
	var caret_pos = caret_column
	text = new_text.to_upper()
	caret_column = caret_pos
	pass # Replace with function body.

func _on_text_submitted(new_text: String) -> void:
	text = ">"
	if re.search(new_text):
		if reg.search(new_text) and reg.search(new_text).get_string() == new_text:
				$RichTextLabel.text += new_text+"\n"
		else:
			$RichTextLabel.text += "[color=ffff00]"+new_text+"\n[/color]"
	
	else:
		$RichTextLabel.text += "[color=ff0000]"+new_text+"\n[/color]"
	
	pass # Replace with function body.

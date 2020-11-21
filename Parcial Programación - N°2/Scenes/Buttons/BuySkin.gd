extends TextureButton

export(int) var skin_number = 1;

func _ready():
	if Globals.skin_unlocked[skin_number] == true:
		get_node("RichTextLabel").bbcode_text = "[center][shake]EQUIP"
	else:
		get_node("RichTextLabel").bbcode_text = "[center][shake]BUY"

func _on_TextureButton2_pressed():
	if Globals.skin_unlocked[skin_number] == false:
		Globals.skin_unlocked[skin_number] = true
		get_node("RichTextLabel").bbcode_text = "[center][shake]EQUIP"
	else:
		Globals.current_skin = skin_number
	get_node_or_null("/root/Store").save_skins()
	

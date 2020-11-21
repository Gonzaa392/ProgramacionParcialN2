extends Node2D

func _ready():
	get_node("coins").text = str(Globals.monedas)
	pass # Replace with function body.

func save_skins():
	var archivo = File.new()
	var err = archivo.open(Globals.save_path,File.WRITE)
	if err == OK:
		archivo.store_var(Globals.current_skin)
		archivo.close()
	else:
		print("paso algo malo guardando las skins chabon mal ahi")

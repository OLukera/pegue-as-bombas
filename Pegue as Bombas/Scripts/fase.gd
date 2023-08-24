extends Node2D

var bomba = preload("res://Scenes/bomba.tscn")
var tempo = 0
onready var texto = $Label
var pontos = 0

func _ready():
	pass


func _process(delta):
	texto.text = "Pontos: " + str(pontos)
	tempo += delta
	if tempo > 1:
		criarBomba()
		tempo = 0

func criarBomba():
	var bombaCriada = bomba.instance()
	bombaCriada.position = Vector2(rand_range(0, 500), 0)
	self.add_child(bombaCriada)

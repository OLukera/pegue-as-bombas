extends Area2D

var velocidade = 100

func _ready():
	pass

func _process(delta):
	velocidade += 3
	self.position.y += velocidade * delta
	
	if self.position.y > 680:
		self.queue_free()
		#print("Destrui!!")


func _on_bomba_body_entered(body):
	if body.name == "player":
		get_parent().pontos += 1
		queue_free()


func _on_bomba_area_entered(area):
	if area.name == "chao":
		get_parent().pontos -= 1
		queue_free()

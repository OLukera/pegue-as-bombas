extends KinematicBody2D

export var speed = 300
onready var sprite = $Sprite

func _ready():
	pass

func _process(delta):
	var direcao = Vector2()
	
	#60 e 460
	
	if Input.is_action_pressed("direita"):
		direcao.x = 1
		sprite.flip_h = false
		$colisao.position.x = 24
		
	if Input.is_action_pressed("esquerda"):
		direcao.x = -1
		sprite.flip_h = true
		$colisao.position.x = -24
	
	#Limitando o personagem
	if self.position.x < 60:
		self.position.x = 60
	
	if self.position.x > 460:
		self.position.x = 460
		
	
	#position x da colisão = 24 e -24 esquerda
	
	move_and_slide(direcao * speed)
	

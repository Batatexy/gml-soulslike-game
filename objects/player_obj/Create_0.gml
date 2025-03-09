//Botões
buttons =
[
	[ord("W"), ""], // 0
	[ord("A"), ""], // 1
	[ord("S"), ""], // 2
	[ord("D"), ""], // 3
	[ord("E"), ""], // 4
	[ord("R"), ""], // 5
	[ord("F"), ""], // 6
	[ord("Q"), ""], // 7
	[ord("SHIFT"), ""], // 8
	[ord("1"), ""], // 9
	[ord("2"), ""], // 10
	[ord("3"), ""], // 11
	[ord("4"), ""], // 12
	[mb_left, "pressed"], // 13
	[mb_right, "pressed"], // 14
]

//Ações a partir dos botões
actions = []


//Vida e Stamina
maxLife = 100//Vida máxima
life = maxLife

maxStamina = 10//Stamina máxima
stamina = maxStamina

//Ataque
atkvar = 40
atktimer = atkvar
atk = 0
dmg = 0
playerhit = 0
dmgreceive = 0

//Timer que se toma o dano pra n ficar igual mineirinho
global.hitvar = 28//Variavel fixa para o Player e Inimigos
global.hittimer = global.hitvar
hitvar = global.hitvar
hittimer = hitvar

//Movimentação:
canMove = true

	//Velocidade de movimento
	defaultSpd = 1.8
	spd = defaultSpd
	spdatk = 0

//Hitbox com paredes e portas
hb = 4

//Arma selecionada
selectedWeapon = 0

//Armas liberadas
weapons = 
[
	[
		true, //Se a arma está liberada
		4, //Dano
		player_obj.defaultSpd / 1.6, //spdatk
		30, //atkvar
	],
	[
		false,

	],
	[
		false,

	],
	[
		false,

	],
]

//Chaves
keys = [false, false, false, false, false]

//Paredes Secretas Reveladas
secretWallsRevealed = [false, false, false]

global.tpplacex = x
global.tpplacey = y




deathTrigger = false
deathTimerVar = 1000
deathTimer = deathTimerVar

global.tp = 0


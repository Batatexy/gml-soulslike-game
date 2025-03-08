//Vida e Stamina
maxLife = 1//Vida máxima
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

global.wall01=0

global.tpplacex=x
global.tpplacey=y





deathTimerVar = 1000
deathTimer = deathTimerVar

global.tp = 0


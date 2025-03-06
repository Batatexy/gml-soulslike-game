//Vida e morte
global.maxLife = 10//Vida máxima
global.life = global.maxLife
global.morte = 0

	//Ataque
	atkvar = 40
	atktimer = atkvar
	global.atk = 0
	global.dmg = 0
	global.playerhit = 0
	global.dmgreceive = 0

	//Timer que se toma o dano pra n ficar igual mineirinho
	global.hitvar = 28//Variavel fixa para o Player e Inimigos
	global.hittimer = global.hitvar
	hitvar = global.hitvar
	hittimer = hitvar

//Velocidade de movimento
global.spdvar = 1.8
spd = global.spdvar
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
		global.spdvar / 1.6, //spdatk
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








event_inherited();

maxLife = 150
life = maxLife

maxStamina = 100
stamina = maxStamina

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

//Hitbox com paredes e portas
hb = 4

//Chaves
keys = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]

//Portas
doors = [false, false, false, false, false, false, false, false, false, false, false, false]

//Paredes Secretas Reveladas
secretWallsRevealed = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]

global.tpplacex = x
global.tpplacey = y

//Morte
deathTrigger = false
deathTimerVar = 1000
deathTimer = deathTimerVar

global.tp = 0


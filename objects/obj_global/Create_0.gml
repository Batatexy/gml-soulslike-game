//Armas liberadas
global.weapons = 
[
	//Soco
	{
		unlocked: true, //Se a arma está liberada
		type: "punch", //Tipo de ataque
		dmg: 1, //Dano
		spdatk: 0.65, //Multiplicador de Velocidade de Movimento enquanto ataca
		atktimer: 30, //Tempo que dura o ataque
		sprites: [spr_hollow, spr_hollow] // Sprites
	},
	//Espada Branca Media
	{
		unlocked: true,
		type: "swing",
		angleIncrease: 6.7,
		dmg: 70,
		spdatk: 0.35,
		atktimer: 30,
		sprites: [spr_sword_01_atk_02, spr_sword_01_atk_01]
	},
	//Lança
	{
		unlocked: false,
		type: "thrust",
		dmg: 20,
		spdatk: 0.2,
		atktimer: 30,
		sprites: [spr_spear_01]
	},
	//Espada Vermelha
	{
		unlocked: false,
		type: "swing",
		angleIncrease: 4.5,
		dmg: 5,
		spdatk: 0.05,
		atktimer: 50,
		sprites: [spr_sword_02_atk_02, spr_sword_02_atk_01]
	},
	//
	{
		unlocked: false,
		type: "swing",
		dmg: 0,
		spdatk: 1,
		atktimer: 10,
	},
]

//Quando um inimigo morre, sua instancia é salva aqui
global.deadEnemys = []



global.triggerenemyvar = 300
global.triggerenemy1 = global.triggerenemyvar

cell_t = 8
cell_w = room_width div cell_t
cell_h = room_height div cell_t
mp_grid = mp_grid_create(0,0,cell_w,cell_h,cell_t,cell_t)
mp_grid_add_instances(mp_grid,obj_wall,true)
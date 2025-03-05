x=mouse_x
y=mouse_y

	
/////////////////////////////////////////////////////////////////////////////

//Resetar a sala
if keyboard_check(ord("R"))
{
game_restart()
}
//Troca de lado de ataque do Player
if global.sides>=2
{
global.sides=0
}




if global.triggerenemy1>=global.triggerenemyvar
{
global.triggerenemy1=global.triggerenemyvar
}

if global.triggerenemy1<=0
{
global.triggerenemy1=0
}
//Troca de lado de ataque dos inimigos, fazer um sistema melhor kkk
if global.enemysides>=2
{
global.enemysides=0
}







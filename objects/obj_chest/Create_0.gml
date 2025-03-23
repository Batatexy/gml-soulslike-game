open = 0
opentimer = 105

//O que vai vir no baú?
place = 0
if x = 3248 and y = 4632
{
	place = 1
}
if x = 3008 and y = 4632
{
	place = 2
}
if x = 0 and y = 0
{
	place = 3
}
if x = 0 and y = 0
{
	place = 4
}
if x = 0 and y = 0
{
	place = 5
}

//Aleatoridade do som do baú
sound = irandom(6)
if sound = 1{sound = sfx_openingChest_01}
if sound = 2{sound = sfx_openingChest_02}
if sound = 3{sound = sfx_openingChest_03}
if sound = 4{sound = sfx_openingChest_04}
if sound = 5{sound = sfx_openingChest_05}
if sound = 6{sound = sfx_openingChest_06}

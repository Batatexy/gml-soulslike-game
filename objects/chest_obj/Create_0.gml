open=0
opentimer=55

//O que vai vir no baú?
place=0
if x=3248 and y=4632{
	place=1
}
if x=0 and y=0{
	place=2
}
if x=0 and y=0{
	place=3
}
if x=0 and y=0{
	place=4
}
if x=0 and y=0{
	place=5
}

//Aleatoridade do som do baú
sound=irandom(6)
if sound=1{sound=Bau1}
if sound=2{sound=Bau2}
if sound=3{sound=Bau3}
if sound=4{sound=Bau4}
if sound=5{sound=Bau5}
if sound=6{sound=Bau6}

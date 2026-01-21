///splitobject(splitnumber, speed, createobject, toplayer_or_randomdirection, selfdestroy);
var a,i,dir;

//splitobject(splitnumber,speed,createobject,toplayer(1) or randomdirection(0),selfdestroy or not)
//splitobject(•ª—ô”,”­ŽË‘¬“x,”­ŽË‚³‚ê‚éƒIƒuƒWƒFƒNƒg,Ž©‹@‘_‚¢(1) ‚© ƒ‰ƒ“ƒ_ƒ€(0),Ž©g‚ð”j‰ó‚·‚é‚©”Û‚©)

if(argument3){dir=point_direction(x,y,player.x,player.y)}
else{dir=random(360)}


for(i=1;i<=argument0;i+=1;){
a=instance_create(x,y,argument2)
a.speed=argument1
a.direction=dir
dir+=360/argument0
}

if(argument4)instance_destroy();

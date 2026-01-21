
if(room != rSelectStage){

if(muteki=0 && global.Debug_Muteki_Mode=0){
//ƒvƒŒƒCƒ„[‚ªŽ€‚ñ‚¾Žž‚ÌƒCƒxƒ“ƒg

////‰¹Šy‚ð–Â‚ç‚µ‚Ä‚¢‚éObject‚ðíœ
/*if(instance_exists(playMusic)){
  with(playMusic){
    instance_destroy();
  }
}*/

////Œ»Ý–Â‚Á‚Ä‚¢‚éSound‚ð‘S‚Ä’âŽ~‚µAŽ€–S—pBGM‚ðÄ¶

if(global.BGM_Forever=0){
sound_stop_all();
sound_play(sndOnDeath);
}else{
sound_play(sndDeath);
}

////ŒŒ‚ð•¬o‚³‚¹‚éˆ×‚ÌObject‚ð¶¬
instance_create(x,y,bloodEmitter);

////ƒvƒŒƒCƒ„[‚ÌObject‚ðíœ
if(instance_exists(player)){
  with(player){
    instance_destroy();
  }
}
if(instance_exists(player2)){
  with(player2){
    instance_destroy();
  }
}


//ƒQ[ƒ€ƒI[ƒo[‚Ì•¶ŽšiObjectj‚ð¶¬
instance_create(view_xview+400,view_yview+300,GAMEOVER);

//Ž€–S”‚ÆŽžŠÔ‚Ì•Û‘¶
global.death += 1;
saveDeathTime();

}

}else{

room_goto(rSelectStage);
  with(player){
    instance_destroy();
  }
  with(player2){
    instance_destroy();
  }

}

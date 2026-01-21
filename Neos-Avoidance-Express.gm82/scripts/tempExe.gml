//tenpƒtƒ@ƒCƒ‹‚ð“Ç‚Ýž‚ÝA‚»‚ê‚ðŽÀs‚µ‚Ä‚¢‚Ü‚·
//ƒZ[ƒuƒf[ƒ^‚È‚Ç‚ÍŠî–{“I‚ÉƒoƒCƒiƒŠŒ`Ž®‚Å•Û‘¶‚³‚ê‚Ä‚¢‚Ü‚·
var f;

f = file_bin_open("temp",0);
global.savenum = file_bin_read_byte(f);
file_bin_close(f);
instance_create(0,0,player);

saveExe();

if(global.grav=1){
player.y+=4
}

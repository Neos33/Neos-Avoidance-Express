//ƒQ[ƒ€‚ðƒZ[ƒu
//ƒZ[ƒuƒf[ƒ^‚È‚Ç‚ÍŠî–{“I‚ÉƒoƒCƒiƒŠŒ`Ž®‚Å•Û‘¶‚³‚ê‚Ä‚¢‚Ü‚·
var f,tem;

file_copy("save"+string(global.savenum),"save"+string(global.savenum)+".bk")

f = file_bin_open("save"+string(global.savenum),1);
tem = room;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);

if(global.grav=0){
tem = player.x;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
tem = player.y;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
}else{
tem = player2.x;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
file_bin_write_byte(f,tem);
tem = player2.y;
file_bin_write_byte(f,floor(tem/10000));
tem -= floor(tem/10000)*10000;
file_bin_write_byte(f,floor(tem/100));
tem -= floor(tem/100)*100;
}
file_bin_write_byte(f,tem);
file_bin_write_byte(f,global.grav);

file_bin_close(f);


saveGameItem();

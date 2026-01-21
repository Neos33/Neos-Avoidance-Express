//ã‚É•\Ž¦‚³‚ê‚éƒQ[ƒ€ƒ^ƒCƒgƒ‹
//‚ ‚ÆƒQ[ƒ€ŠJŽnƒ‹[ƒ€‚ÌÝ’è
//scrNeosGlobals();
global.Game_Title="i wanna be the engine yuuutu edition";
global.Game_Start_Room=rStage01

//Debug_Mode=1‚É‚·‚é‚Æ
//–³“GƒL[A”{‘¬ƒL[“™‚ªŽg‚¦‚é‚æ‚¤‚É‚È‚è‚Ü‚·
//exe‹N“®Žž‚É‚ÍOFF‚É‚È‚è‚Ü‚·
//0=OFF 1=ON
global.Debug_Mode=1
global.Debug_Muteki_Key=vk_control
global.Debug_Baisoku_Key=ord('2')
global.Debug_Gensoku_Key=ord('3')
global.Debug_Tousoku_Key=ord('1')

//QuickSave‹@”\
//0=OFF 1=ON
global.Quick_Save=0
global.Quick_Save_Key=ord('S')

//global.lite‚Ì’l‚ð‚P‚É‚·‚é‚Æliteƒ‚[ƒh‚É‚È‚è‚Ü‚·
//liteƒ‚[ƒh‚Å‚Íƒƒjƒ…[‰æ–Ê‚ªƒXƒLƒbƒv‚³‚ê‚é‚Ì‚ÅA“ÁŽê‚ÈƒAƒCƒƒi‚ðì‚é‚Ì‚ÉŒü‚¢‚Ä‚¢‚Ü‚·
//0=OFF 1=ON
global.Lite_Mode=0

//BGM‚ªŽ€‚ñ‚Å‚àŽ~‚Ü‚ç‚È‚­‚È‚è‚Ü‚·
//0=OFF 1=ON
global.BGM_Forever=1

//ƒƒjƒ…[‚ÌŽd—l‚ð•Ï‚¦‚é‹@”\
//0=Normal 1=Simple
global.Menu_Select=0

//BackSpace‚ÅŽw’è‚µ‚½•”‰®‚Éƒ[ƒvo—ˆ‚é‚æ‚¤‚É‚·‚é‹@”\
//0=OFF 1=ON
global.BackSpace_Warp=0
global.BackSpace_Warp_Room=rStage01
global.BackSpace_Warp_Key=vk_backspace

//ŒŒ‚Æˆê‚ÉŠç‚ð”ò‚Î‚·‹@”\
//ŒŒ‚ÆŠç‚ª3D‚É‚È‚é‹@”\
//0=OFF 1=ON
global.BloodEmitter_Face=0
global.BloodEmitter_3D=0

//A,D‚Åƒhƒbƒg’²®o—ˆ‚é‹@”\
//0=OFF 1=ON
global.Dot_Adjust=0
global.Dot_Adjust_Lkey=ord('A')
global.Dot_Adjust_Rkey=ord('D')

//‰ºƒL[‚ÅƒXƒ‰ƒCƒho—ˆ‚é‹@”\
//0=OFF 1=ON
global.Slide_Move=0
global.Slide_Move_Key=vk_down

//ƒ}ƒEƒXƒJ[ƒ\ƒ‹‚ð•ÏX‚·‚é‹@”\
//Žg‚¤‚Æ‚«‚ÍGlobal Game Settings‚ÌDisplay the cursor‚Ìƒ`ƒFƒbƒN‚ðŠO‚µ‚Ä‚­‚¾‚³‚¢
//0=OFF 1=ON
global.Mouse_Cursor_Change=0
global.Mouse_Cursor=objMouseCursor

//ƒQ[ƒ€’†NumLock‚ð‰ðœ‚·‚é‹@”\
//0=OFF 1=ON
global.NumLock_Reset=1

//ƒ|[ƒYƒL[‚ðŽg‚¦‚é‚æ‚¤‚É‚·‚é
//0=OFF 1=ON
global.Pause_Message=1

//controls
global.leftbutton=vk_left;
global.rightbutton=vk_right;
global.jumpbutton=vk_shift;
global.shotbutton=ord('Z');

//gmk‚©‚ç‚Ì‹N“®Žž‚Ì‚ÝDebug‚ðƒIƒ“‚É‚·‚é
if(string_pos("gm_ttt_",parameter_string(0))=0 || string_pos("gm_ttt_",working_directory)!=0 ){
 global.Debug_Mode=0
}else{
 //global.Debug_Muteki=1
}

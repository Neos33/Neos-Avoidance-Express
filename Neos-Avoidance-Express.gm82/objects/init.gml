#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//‘åŽ–‚È‘åŽ–‚È‰ŠúÝ’è‚ð“Ç‚Ýž‚Þ
SetGlobalOption()

//ƒƒbƒZ[ƒW‚ð“ú–{Œê‰»‚·‚é
message_text_font("MSƒSƒVƒbƒN",10,c_white,0)
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//"temp"ƒtƒ@ƒCƒ‹‚ª‘¶Ý‚µ‚Ä‚¢‚ê‚Îƒ[ƒh‚µA–³‚¯‚ê‚ÎŽŸ‚Ì•”‰®iƒXƒ^[ƒg’n“_j‚ÉˆÚ“®
if(file_exists("temp") == true){
  tempExe();
}
else{
  room_goto_next();
}

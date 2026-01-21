#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(global.Lite_Mode=0){

    for(i = 1; i <= 3; i += 1){
        global.savenum = i;
        if(file_exists("save"+string(global.savenum)) == true){
            saveExeItem()

            global.difficulty[i] = global.difficulty;
            global.death[i] = global.death;
            global.time[i] = global.time;
            global.boss1[i] = global.boss1;
            global.boss2[i] = global.boss2;
            global.boss3[i] = global.boss3;
            global.boss4[i] = global.boss4;
            global.boss5[i] = global.boss5;
            global.boss6[i] = global.boss6;
            global.boss7[i] = global.boss7;
            global.boss8[i] = global.boss8;
            global.clear[i] = global.clear;

        }else{

            global.difficulty[i] = 0;
            global.death[i] = 0;
            global.time[i] = 0;
            global.boss1[i] = 0;
            global.boss2[i] = 0;
            global.boss3[i] = 0;
            global.boss4[i] = 0;
            global.boss5[i] = 0;
            global.boss6[i] = 0;
            global.boss7[i] = 0;
            global.boss8[i] = 0;
            global.clear[i] = 0;

        }

    }
    global.savenum = 0;
    global.difficulty = 0;
    global.death = 0;
    global.time = 0;
    global.boss1 = 0;
    global.boss2 = 0;
    global.boss3 = 0;
    global.boss4 = 0;
    global.boss5 = 0;
    global.boss6 = 0;
    global.boss7 = 0;
    global.boss8 = 0;
    global.clear = 0;

}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(keyboard_check_pressed(global.jumpbutton) == true){

if(global.Lite_Mode=0){

  room_goto(rMenu);

}else{
  if(file_exists("save1")=1){loadGame()}
  else{room_goto(rStage01); global.difficulty=1;}
}

}

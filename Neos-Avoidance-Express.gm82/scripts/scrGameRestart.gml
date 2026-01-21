///scrGameRestart();

// Credits to Po4ti

room_goto(rInit);

with world instance_destroy();
with player instance_destroy();

//
with blood instance_destroy();
with bloodEmitter instance_destroy();
with GAMEOVER instance_destroy();


with playMusic event_perform(ev_other, ev_room_start);

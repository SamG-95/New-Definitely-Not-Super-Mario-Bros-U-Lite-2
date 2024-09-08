if(place_meeting(x,y-300, obj_person)){  //looking up
 hp--;
 fallSpeed = 1;
 //y=y+3
}
if(place_meeting(x+3,y, obj_person)){  //looking right
 game_restart();
}
if(place_meeting(x-3,y, obj_person)){  //looking right
 game_restart();
}
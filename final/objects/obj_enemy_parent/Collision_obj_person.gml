if(place_meeting(x,y-5, obj_person)){  //looking up
 hp--;
 obj_person.fallSpeed=obj_person.jumpHeight;
 //y=y+3
}
if(place_meeting(x+3,y+10, obj_person)){  //looking right
 game_restart();
}
if(place_meeting(x-3,y+10, obj_person)){  //looking right
 game_restart();
}
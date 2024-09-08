/// @description Insert description here
// You can write your code in this editor
var accelerationDueToGravity = 0.25;
var terminalVelocity = 10;
jumpHeight = -10;


if(fallSpeed < terminalVelocity) {
	fallSpeed = fallSpeed + accelerationDueToGravity;
}


if(place_meeting(x,y+fallSpeed+1, obj_platform_parent)){  //looking underneath
 fallSpeed = 0;
}

//look above and see if there in an upcoming collision
if(place_meeting(x,y-fallSpeed-3, obj_platform_parent)){  //looking up
 fallSpeed = 1;
 //y=y+3
}
	//stop upward momentum
if(keyboard_check(vk_left) == true){
	if(!place_meeting(x-moveSpeed-1,y-5, obj_platform_parent)){  //looking left
		image_xscale = 1;
		x=x-moveSpeed;
		
	}
}
	
if(keyboard_check(vk_right) == true){
	if(!place_meeting(x+moveSpeed+1,y-5, obj_platform_parent)){  //looking right
		image_xscale = -1;
		x=x+moveSpeed;
}
}

	//add left and right arrow to move left and right
		//look head left and right and make sure that we aren't going to hit something.

if(keyboard_check(vk_space) == true)
{
	if(place_meeting(x,y+terminalVelocity+1, obj_platform_parent)){
	 fallSpeed=jumpHeight;
}}
y=y+fallSpeed;

if(y>=717){
	game_restart();
}

//Enemy stuff
//if(place_meeting(x,y+fallSpeed+1, obj_enemy_parent)){  //looking underneath
// hp--;
// fallSpeed = 0;
//}

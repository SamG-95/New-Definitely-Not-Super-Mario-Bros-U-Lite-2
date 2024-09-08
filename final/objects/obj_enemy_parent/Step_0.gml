if(instance_exists(obj_person)&&secretnum==0){
	move_towards_point(0,y,1.5);
	//if the direction is 0, it moves to the left
}
if(instance_exists(obj_person)&&secretnum==1){
	move_towards_point(6809,y,1.5);
	//if the direction is 1, it moves to the right
}
if(hp<=0) {
	obj_scorekeeper.itemsPickedUp++;
	//sends to scorekeeper an extra 100 points
	instance_destroy();
}

var enemyAccelerationDueToGravity = 0.25;
var enemyTerminalVelocity = 10;


if(enemyFallSpeed < enemyTerminalVelocity) {
	enemyFallSpeed = enemyFallSpeed + enemyAccelerationDueToGravity;
	//allows enemies to fall down
}


if(place_meeting(x,y+enemyFallSpeed+1, obj_platform_parent)){  //looking underneath
 enemyFallSpeed = 0;
}
y=y+enemyFallSpeed;
if(y>=800){
y=y-700;
//if an enemy falls down a pit, they're reset up and in a different direction
if(secretnum==0){
	secretnum=1;
	x=x+300;
} else {
	secretnum = 0;
	x=x-300;
}
}
if(instance_number(obj_enemy_parent)==0)
{ room_goto_next()
} 

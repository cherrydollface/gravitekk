// check both collisions
// find both player instances
// find both gravipad instances
var playerBlue = instance_find(o_player_blue, 0)
var playerGreen = instance_find(o_player_green, 0)

if(playerBlue == noone || playerGreen == noone) return 0;

var bluePadCount = instance_number(o_gravipad_blue);

var i;
var bluePad;
for (i = 0; i < bluePadCount; i += 1) {
	var bluePadCandidate = instance_find(o_gravipad_blue, i);
	if(bluePadCandidate.hitag == hitag) {
		bluePad = bluePadCandidate;
		break;
	}
}

var greenPad;
var greenPadCount = instance_number(o_gravipad_green);

for (i = 0; i < greenPadCount; i += 1) {
	var greenPadCandidate = instance_find(o_gravipad_green, i);
	if(greenPadCandidate.hitag == hitag) {
		greenPad = greenPadCandidate;
		break;
	}
}

var bluePadSecured = false;
with bluePad {
	if place_meeting(x, y, playerBlue) {
		bluePadSecured = true;
	}
}

var greenPadSecured = false;
with greenPad {
	if place_meeting(x, y, playerGreen) {
		greenPadSecured = true;
	}
}


if(greenPadSecured && bluePadSecured && !activated) {
	script_execute(action, vk_left);
	activated = false;
}

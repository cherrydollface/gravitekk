var playerBlue = instance_find(o_player_blue, 0)
var playerGreen = instance_find(o_player_green, 0)

if(playerBlue == noone || playerGreen == noone) return 0;

var bluePadCount = instance_number(o_gravipad_blue);
var greenPadCount = instance_number(o_gravipad_green);

var i;
var nextPad = noone;
for (i = 0; i < bluePadCount; i += 1) {
	var bluePadCandidate = instance_find(o_gravipad_blue, i);
	if(bluePadCandidate.hitag == hitag && bluePadCandidate != self) {
		if(nextPad == noone && bluePadCandidate != self  && !bluePadCandidate.visited) {
			nextPad = bluePadCandidate;
		} else {
			if(bluePadCandidate.lotag < nextPad.lotag && !bluePadCandidate.engaged) {
				nextPad = bluePadCandidate;
			}
		}
	}
}

for (i = 0; i < greenPadCount; i += 1) {
	var greenPadCandidate = instance_find(o_gravipad_green, i);
	if(greenPadCandidate.hitag == hitag && greenPadCandidate != self && !greenPadCandidate.visited) {
		if(nextPad == noone) {
			nextPad = greenPadCandidate;
		} else {
			if(greenPadCandidate.lotag < nextPad.lotag && !greenPadCandidate.engaged) {
				nextPad = greenPadCandidate;
			}
		}
	}
}

if(nextPad == noone) {
	// destroy all
	for (i = 0; i < instance_number(o_scripted_object); i += 1) {
		var obj = instance_find(o_scripted_object, i);
		if(obj.hitag == hitag && obj != self) {
			instance_destroy(obj);
		}		
	}
	return 0;
}

nextPad.engaged = true;
engaged = false;
visited = true;
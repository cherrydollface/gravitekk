var bluePadCount = instance_number(o_gravipad_blue);
var greenPadCount = instance_number(o_gravipad_green);

var i;
var lowestPad = noone;
var minTag = 100000;

for (i = 0; i < bluePadCount; i += 1) {
	var bluePadCandidate = instance_find(o_gravipad_blue, i);
	if(bluePadCandidate.hitag == hitag) {
		bluePadCandidate.engaged = false;
		bluePadCandidate.visited = false;
		if(bluePadCandidate.lotag < minTag) {
			minTag = bluePadCandidate.lotag;
			lowestPad = bluePadCandidate
		}
	}
}

for (i = 0; i < greenPadCount; i += 1) {
	var greenPadCandidate = instance_find(o_gravipad_green, i);
	if(greenPadCandidate.hitag == hitag) {
		greenPadCandidate.engaged = false;
		greenPadCandidate.visited = false;
		if(greenPadCandidate.lotag < minTag) {
			minTag = greenPadCandidate.lotag;
			lowestPad = greenPadCandidate
		}
	}
}

lowestPad.engaged = true;

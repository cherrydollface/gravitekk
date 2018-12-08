global.gamePadConnected = false;
var maxpads = gamepad_get_device_count();for (var i = 0; i < maxpads; i++)
    {
		if (gamepad_is_connected(i))
        {
			global.gamePadConnected = true;
			global.gamePadIndex = i;
			break;
        }
    }
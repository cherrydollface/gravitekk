var msg = message[message_current];
var messageSize = string_length(message[message_current]);

var isServiceMessage = (string_copy(msg, 0, 1) == "<" && string_copy(msg, messageSize, 1) == ">");
if(isServiceMessage) {
	var portrait_name = string_copy(msg, 2, messageSize - 2);
	
	with instance_find(o_dialog_portraiit, 0) {
		portait = asset_get_index(portrait_name);
	}
	message_current++;
}
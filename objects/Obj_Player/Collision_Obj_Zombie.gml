/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CFDD810
/// @DnDArgument : "var" "player_health"
/// @DnDArgument : "op" "3"
if(player_health <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 477D9973
	/// @DnDParent : 4CFDD810
	/// @DnDArgument : "soundid" "Walking"
	/// @DnDSaveInfo : "soundid" "Walking"
	audio_stop_sound(Walking);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 455A360B
	/// @DnDParent : 4CFDD810
	/// @DnDArgument : "room" "GameStart"
	/// @DnDSaveInfo : "room" "GameStart"
	room_goto(GameStart);
}
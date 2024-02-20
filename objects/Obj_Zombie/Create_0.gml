/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4613A397
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "zombie_health"
/// @DnDArgument : "var_1" "zombie_speed"
zombie_health = 1;
zombie_speed = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 777DC1D4
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "dead"
/// @DnDArgument : "var_1" "zombie_cooldown"
dead = false;
zombie_cooldown = false;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0CE62D6C
/// @DnDArgument : "soundid" "Zombie"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "Zombie"
var l0CE62D6C_0 = Zombie;
if (!audio_is_playing(l0CE62D6C_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 29BCAABA
	/// @DnDParent : 0CE62D6C
	/// @DnDArgument : "soundid" "Zombie"
	/// @DnDSaveInfo : "soundid" "Zombie"
	audio_play_sound(Zombie, 0, 0, 1.0, undefined, 1.0);
}
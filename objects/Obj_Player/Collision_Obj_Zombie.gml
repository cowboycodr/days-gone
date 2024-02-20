/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 297A8CE5
/// @DnDArgument : "var" "zombie_cooldown"
/// @DnDArgument : "value" "false"
if(zombie_cooldown == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0592A484
	/// @DnDInput : 2
	/// @DnDParent : 297A8CE5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "player_health"
	/// @DnDArgument : "var_1" "zombie_cooldown"
	player_health += -1;
	zombie_cooldown = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1B0A862F
	/// @DnDParent : 297A8CE5
	/// @DnDArgument : "steps" "50"
	alarm_set(0, 50);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CFDD810
/// @DnDArgument : "var" "player_health"
/// @DnDArgument : "op" "3"
if(player_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 455A360B
	/// @DnDParent : 4CFDD810
	/// @DnDArgument : "room" "GameStart"
	/// @DnDSaveInfo : "room" "GameStart"
	room_goto(GameStart);
}
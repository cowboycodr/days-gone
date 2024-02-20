repeat(phase * 2)
{
    var zx, zy;
    
    if irandom(2) == 0 // Randomly select top/bottom or left/right
    {
        zx = choose(-25, room_width + 25);
        zy = irandom(room_height);
    }
    else
    {
        zx = irandom(room_width);
        zy = choose(-25, room_height + 25);
    }

    var zombie = instance_create_layer(zx, zy, "Instances", Obj_Zombie);
    
    zombie.zombie_speed = random_range(phase / 40, phase / 15);
    
    if (zombie.zombie_speed >= 2)
    {
        zombie.zombie_speed = 2;
    }
}

new_phase_registered = false;
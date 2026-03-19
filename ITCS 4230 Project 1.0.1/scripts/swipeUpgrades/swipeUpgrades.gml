
	// Create a map assigned to global.swipe
	global.swipe = ds_map_create();
	// Call the function to reset the swipe weapon.
	// First time, this essentially setps it up.
	weapon_swipe_reset();

	// Define the reset function for the swipe weapon.
	function weapon_swipe_reset() 
	{
		// Reset swipe weapon values.
		ds_map_add(global.swipe, "damage", 1);
		ds_map_add(global.swipe, "attack_speed", 1);
		ds_map_add(global.swipe, "range", 1);
		ds_map_add(global.swipe, "unlocked", false);
	}

	// Decalre a function to get the swipe weapon upgrades.
	function weapon_swipe_upgrades(_upgrade_list) 
	{
		
		// Get current attack speed of swipe weapon.
		var _attack_speed = ds_map_find_value(global.swipe, "attack_speed");

		// If attack speed is over 10...
		if (_attack_speed > 0)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "Increase Attack Speed");
			ds_map_replace(_map, "title", "Speed");
			ds_map_replace(_map, "object", global.swipe);
			ds_map_replace(_map, "key", "attack_speed");
			ds_map_replace(_map, "amount", -.04);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "SWIPE");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}

		// Finds the damage value.
		var _damage = ds_map_find_value(global.swipe, "damage");

		// Checks if the value is below 5.
		if (_damage < 70)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increment damage by 1.
			ds_map_replace(_map, "description", "Increase Damage");
			ds_map_replace(_map, "title", "Damage");
			ds_map_replace(_map, "object", global.swipe);
			ds_map_replace(_map, "key", "damage");
			ds_map_replace(_map, "amount", 1);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "SWIPE");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
		
		if (global.attackRange < 5)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increment damage by 1.
			ds_map_replace(_map, "description", "Increase Range");
			ds_map_replace(_map, "title", "Range");
			ds_map_replace(_map, "object", global.swipe);
			ds_map_replace(_map, "key", "range");
			ds_map_replace(_map, "amount", .15);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "SWIPE");
			
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
	}

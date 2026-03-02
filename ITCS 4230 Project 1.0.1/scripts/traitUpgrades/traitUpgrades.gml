
	// Create a map assigned to global.swipe
	global.traits = ds_map_create();
	// Call the function to reset the swipe weapon.
	// First time, this essentially setps it up.
	traits_reset();

	// Define the reset function for the swipe weapon.
	function traits_reset() 
	{
		// Reset swipe weapon values.
		ds_map_add(global.traits, "rage", false);
		ds_map_add(global.traits, "vision", false);
		ds_map_add(global.traits, "immunity", false);
		ds_map_add(global.traits, "lunge", false);
		ds_map_add(global.traits, "speed", false);
		
	}
	
	function trait_upgrades(_upgrade_list) 
	{
		var _immunity = ds_map_find_value(global.traits, "immunity");
		// If attack speed is over 10...
		if (_immunity == false)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "Temporarily grant immunity");
			ds_map_replace(_map, "title", "IMMUNITY");
			ds_map_replace(_map, "object", global.traits);
			ds_map_replace(_map, "key", "immunity");
			ds_map_replace(_map, "amount", true);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "TRAIT");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
		
		var _speed = ds_map_find_value(global.traits, "speed");
		// If attack speed is over 10...
		if (_speed == false)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "Permanently boost move speed");
			ds_map_replace(_map, "title", "SPEED");
			ds_map_replace(_map, "object", global.traits);
			ds_map_replace(_map, "key", "speed");
			ds_map_replace(_map, "amount", true);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "TRAIT");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
		
		var _vision = ds_map_find_value(global.traits, "vision");
		// If attack speed is over 10...
		if (_vision == false)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "See further");
			ds_map_replace(_map, "title", "VISION");
			ds_map_replace(_map, "object", global.traits);
			ds_map_replace(_map, "key", "vision");
			ds_map_replace(_map, "amount", true);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "TRAIT");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
		
		var _lunge = ds_map_find_value(global.traits, "lunge");
		// If attack speed is over 10...
		if (_lunge == false)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "Lunge attack");
			ds_map_replace(_map, "title", "LUNGE");
			ds_map_replace(_map, "object", global.traits);
			ds_map_replace(_map, "key", "lunge");
			ds_map_replace(_map, "amount", true);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "TRAIT");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
		
		var _rage = ds_map_find_value(global.traits, "rage");
		// If attack speed is over 10...
		if (_rage == false)
		{
			// Create a map to hold the upgrade.
			var _map = ds_map_create();
	
			// Increase attack speed.
			// Note that this would actually decreasing a cooldown.
			ds_map_replace(_map, "description", "Rageful bloodlust");
			ds_map_replace(_map, "title", "RAGE");
			ds_map_replace(_map, "object", global.traits);
			ds_map_replace(_map, "key", "rage");
			ds_map_replace(_map, "amount", true);
			ds_map_replace(_map, "icon", sSlashAttackDown);
			ds_map_replace(_map, "weapon_name", "TRAIT");
	
			// Add upgrade to the list.
			ds_list_add(_upgrade_list, _map);
		}
	}

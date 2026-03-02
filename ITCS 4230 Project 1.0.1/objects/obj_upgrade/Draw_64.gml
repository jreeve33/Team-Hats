
// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

draw_sprite(sUpgradeCard, 0, x, y);

// Set the upgrade font.
draw_set_font(fnt_medium);

// Reset text alignments
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Set the font colour.
draw_set_colour($41d7ff);

// Draw the upgrade text.
draw_text(x, y + 185, string(upgrade_data[? "title"]));

// Reset color to white.
draw_set_colour(c_white);

// Set the upgrade font.
draw_set_font(fnt_small);

// Draw the upgrade text.
draw_text(x, y - 50, string(upgrade_data[? "weapon_name"]));

// Set the upgrade font.
draw_set_font(fnt_medium);

// Draw the upgrade text.
draw_text(x, y + 40, string(upgrade_data[? "description"]));

// Draw the upgrade icon.
draw_sprite(upgrade_data[? "icon"], 0, x, y - 200);

// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(sUpgradeHide, 0, x, y);

// Reset alpha to opaque.
draw_set_alpha(1);

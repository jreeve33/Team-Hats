// Stops all audio.
audio_pause_all()

// Play the win game jingle.
//audio_play_sound(snd_win, 0, false);

// Creates the Exit button.
instance_create_layer(960, 1080 - 400, "pause_menu_buttons", oExitButton);
instance_create_layer(960, 1080 - 550, "pause_menu_buttons", oControlsButton)
instance_create_layer(960, 1080 - 700, "pause_menu_buttons", oPlayButton);


// Pause the game
pause();

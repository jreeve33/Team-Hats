// Stops all audio.
audio_stop_all();

// Play the win game jingle.
//audio_play_sound(snd_win, 0, false);

// Creates the Exit button.
instance_create_layer(720, 1080 - 550, "buttons", oExitButton);
instance_create_layer(720, 1080 - 700, "buttons", oPlayButton);


// Pause the game
pause();

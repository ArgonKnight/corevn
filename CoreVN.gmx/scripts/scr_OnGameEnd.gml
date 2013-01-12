/*
* scr_OnGameEnd
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

scr_Write_Logfile( "Begin On_Game_End");

scr_Shutdown();

scr_Write_Logfile( "End On_Game_End");

scr_Close_Logfile();

//we are done. exit...
game_end();


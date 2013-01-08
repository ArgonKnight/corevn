/*
* scr_Shutdown
* handles the clean up process, end the game
*/

/*
* Version History
* 2013-01-04:   file created
* 2013-01-07:   added global.SceneList destructor
*/



ds_map_destroy( global.SceneList );

//we are done. exit...
game_end();

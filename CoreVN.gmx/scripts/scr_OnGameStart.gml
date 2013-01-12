/*
* scr_OngameStart
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

scr_Open_Logfile();

scr_Startup();

scr_CommandLine();

scr_Write_Logfile( "On_Game_Start begin");

scr_Load_NovelConfig();

scr_Load_StoryFile();

scr_Write_Logfile( "On_Game_Start end");

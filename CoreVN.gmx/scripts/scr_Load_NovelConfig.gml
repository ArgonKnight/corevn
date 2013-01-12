/*
* scr_Load_NovelConfig
* handles loading config data from Novel.Config
*/

/*
* Version History
* 2013-01-04:   created
* 2013-01-07:   added new fields to be read from config file:
*               author, backgrounds, foregrounds, scripts, sounds, fonts
* 2013-01-11:   now checking for story version
*               added settings section
*              
*/

scr_Write_Logfile( "Opening " + global.NovelConfigFilename );

//open file
ini_open(global.NovelConfigFilename);

//read version number
var tmpVersion;
tmpVersion = ini_read_string("settings", "version", "");

//check version number
if (tmpVersion != c_version)
{
    //error condition: file is wrong version, or wrong format
    scr_Write_Logfile("Error: This app can not read a Version " + version + " story.");
    
    //should call shutdown to exit cleanly
    game_end();
    exit;
}

//read story file to play
global.CurrentStoryFilename = ini_read_string("novel","story","master.story");

//read title
global.NovelTitle=ini_read_string("novel", "title", "CoreVN");
window_set_caption(global.NovelTitle);

//read author
global.Author = ini_read_string("novel","author","");



//read settings
//..todo..
//window settings
//saved game folder
//framerate?

//close file
ini_close();
    

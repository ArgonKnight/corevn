/*
* scr_Load_NovelConfig
* handles loading config data from Novel.Config
*/

/*
* Version History
* 2013-01-04:   created
* 2013-01-07:   added new fields to be read from config file:
*               author, backgrounds, foregrounds, scripts, sounds, fonts
*/

//open file
ini_open(global.NovelConfigFilename);

//read story file to play
global.CurrentStoryFilename = ini_read_string("novel","story","master.story");

//read title
global.NovelTitle=ini_read_string("novel", "title", "CoreVN");
window_set_caption(global.NovelTitle);

//read author
global.Author = ini_read_string("novel","author","");


//read background image folder
global.BackgroundFolder = ini_read_string("content","backgrounds","");

//read foreground image folder
global.ForgroundFolder = ini_read_string("content","foregrounds","");

//read script folder
global.ScriptFolder = ini_read_string("content","scripts","");

//read sound folder
global.SoundFolder = ini_read_string("content","sounds","");

//read font folder
global.FontFolder = ini_read_string("content","fonts","");

//close file
ini_close();
    

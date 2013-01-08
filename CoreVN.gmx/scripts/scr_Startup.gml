/*
* scr_Startup
* this script handles the app's default values
*/

/*
* Version History
* 2013-01-04:   created
*               added Novel.Config options
*               added NovelTitle;
* 2013-01-07:   added new fields to be read from config file:
*               author, backgrounds, foregrounds, scripts, sounds, fonts
*/

//Stores the Novel.Config filename
globalvar NovelConfigFilename;
global.NovelConfigFilename = working_directory + "\novel.config";

//Stores the Story Filename
//this file contains the list of scenes to be played
globalvar CurrentStoryFilename;
global.CurrentStoryFilename = "master.story";

//Stores the Master Story Filename
//final path would be working_directory\master.story
globalvar FullStoryFilename;

//have to init later....
global.FullStoryFilename = "";

//App Title
globalvar NovelTitle;
global.NovelTitle = "";

globalvar Author;
global.Author="";

globalvar BackgroundFolder;
global.BackgroundFolder="";

globalvar ForegroundFolder;
global.ForegroundFolder="";

globalvar SoundFolder;
global.SoundFolder="";

globalvar ScriptFolder;
global.ScriptFolder="";

globalvar FontFolder;
global.FontFolder="";

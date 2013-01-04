/*
* scr_Startup
* this script handles the app's default values
*/

/*
* Version History
* 2012-01-04; created
*/

//Stores the Story Filename
//this file contains the list of scenes to be played
globalvar StoryFilename;
global.StoryFilename = "master.story";

//Stores the Master Story Filename
//final path would be working_directory\master.story
globalvar FullStoryFilename;

global.FullStoryFilename = working_directory + "\" + global.StoryFilename;


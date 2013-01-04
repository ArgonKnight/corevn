/*
* scr_Load_NovelConfig
* handles loading config data from Novel.Config
*/

/*
* Version History
* 2012-01-04:   created
*/

//open file
ini_open(global.NovelConfigFilename);

//read story file to play
global.CurrentStoryFilename = ini_read_string("novel","story","master.story");

//read title
global.NovelTitle=ini_read_string("novel", "title", "CoreVN");
window_set_caption(global.NovelTitle);

//close file
ini_close();
    

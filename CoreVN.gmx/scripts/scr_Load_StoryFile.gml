/*
* scr_Load_StoryFile
* this script handles loading the data from a story file
*/

/*
* Version History
* 2013-01-04:   file created
*               1st draft of the code
*               changed to use CurrentStoryFilename
* 2012-01-07:   checks for file in the ScriptFolders if it is not blank
*               also added thoughts for reading story file contents
*/

//update the var again
if (global.ScriptFolder == "")
{
    global.FullStoryFilename = working_directory + "\" + global.CurrentStoryFilename;
}
{
    global.FullStoryFilename = working_directory + "\" + global.ScriptFolder + "\" + global.CurrentStoryFilename;
}

//does file exist?
if !file_exists(global.FullStoryFilename)
{
    //error condition: nothing to play
    //should call shutdown to exit cleanly
    scr_Shutdown();
    exit;
}

//open file
var file;
file = file_text_open_read(global.FullStoryFilename);

//read version number
file_text_read_string(file);

//check version number

//read fist scene to play
file_text_read_string(file);

//loop, read remaining scene names
while (!file_text_eof(file))
{
    file_text_readln(file);
}

//close file
file_text_close( file );
    



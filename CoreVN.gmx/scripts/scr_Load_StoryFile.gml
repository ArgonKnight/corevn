/*
* scr_Load_StoryFile
* this script handles loading the daya from a story file
*/

/*
* Version History
* 2012-01-04:   file created
                1st draft of the code
*/

//update the var again
global.FullStoryFilename = working_directory + "\" + global.StoryFilename;

//does file exist?
if file_exists(global.FullStoryFilename)
{
    //open file
    var file;
    file = file_text_open_read(global.FullStoryFilename);

    //read version number

    //read fist scene to play

    //loop, read scene names

    //close file
    file_text_close( file );
    
}
else
{
    //error condition: nothing to play
    //should call shutdown to exit cleanly
    scr_Shutdown();
}


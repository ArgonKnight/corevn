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

/* move this to novel.config!!!
//read version number
var version;
version = file_text_read_string(file);
version = string_lower(version);

//check version number
if (version != c_version)
{
    //error condition: file is wrong version, or wrong format
    file_text_close(file);
    //should call shutdown to exit cleanly
    scr_Shutdown();
    exit;
}
*/

//loop, read scene names
var tmpLine;
while (!file_text_eof(file))
{
    tmpLine = file_text_read_string(file);
    file_text_readln(file);
    
    if (tmpLine != "" )
    {
    
        if (string_char_at( tmpLine,1) == "#")
        { 
            //then comment, skip line
            continue;
        }
        
        //look for an =
        var tmpPos;
        tmpPos = string_pos("=", tmpLine);
        if  (tmpPos != 0)
        {
            //break tmpLine into 2 parts:  SceneName=Scenefile
            var tmpScene;
            tmpScene=string_copy( tmpLine,1, tmpPos-1);
            if (tmpScene == "" )
            {
                //error: scene name blank
                continue;
            }
            var tmpFile;
            tmpFile=string_copy( tmpLine,tmpPos+1, string_length(tmpLine) );
            if (tmpfile == "")
            {
                //error: scen file blank
                continue;
            }
            
            //is name duplicate?   
            if !ds_map_exists( global.SceneList, tmpScene)
            {
                //no, then add to master list
                ds_map_add( global.SceneList, tmpScene, tmpFile);
            }
        } //if    
    }//if
} //while

//close file
file_text_close( file );
    



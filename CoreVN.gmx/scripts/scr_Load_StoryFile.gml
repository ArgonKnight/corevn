/*
* scr_Load_StoryFile
* this script handles loading the data from a story file
*/

/*
* Version History:
*
* 2013-01-04:   file created
*               1st draft of the code
*               changed to use CurrentStoryFilename
*
* 2013-01-07:   checks for file in the ScriptFolders if it is not blank
*               also added thoughts for reading story file contents
*
* 2013-01-11:   no longer using script folder
*               refactored the read loop. 
*/

//update the var again
global.FullStoryFilename = working_directory + "\" + global.CurrentStoryFilename;


scr_Write_Logfile( "Opening " + global.FullStoryFilename );

//does file exist?
if !file_exists(global.FullStoryFilename)
{
    //error condition: nothing to play
    scr_Write_Logfile("Error: No Story File to play");
    //should call shutdown to exit cleanly
    game_end();
    exit;
}

//open file
var file;
file = file_text_open_read(global.FullStoryFilename);


//loop, read scene names

var tmpLine;
while (!file_text_eof(file))
{
    tmpLine = file_text_read_string(file);
    file_text_readln(file);
    
    if (tmpLine == "" )
    {
        //no data
        continue;
    }
    
    //Trim the spaces off the beginning of the line
    while (string_char_at(tmpLine,1)=" ")
    { 
        tmpLine=string_delete(tmpLine,1,1)
    }    
    
    if string_length( tmpLine) == 0
    {
        //aint nothing left
        continue;
    }
    
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
    
} //while


//close file
file_text_close( file );
    



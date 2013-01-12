/*
* scr_Cmd_Background
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

//show background fname

if (argument0 != "")
{

    var fname;
    
    fname = novel+"\background\"+s2
    if (file_exists( fname ) )
    {
        sprite_replace(spr_Background, fname,0,0,0,0,0);
    } //if        
    
}//if

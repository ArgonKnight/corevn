/*
* scr_CmdDefine
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

//define type name fname

//type
if (argument0 == "" )
{
    exit;
}

var type;
type = string_upper( argument0);

//name
if (argument1 == "")
{
    exit;
}

var name;
name = string_upper( argument1);

//filename
if (argument2 == "" )
{
    exit;
}

var fname;
fname = argument1;

if (type == "BACKGROUND")
{

    if (!ds_map_exists( global.BackgroundList, name) )
    {
        ds_map_add( global.BackgroundList, name, fname );   
    }//if

}
else
{

}//if




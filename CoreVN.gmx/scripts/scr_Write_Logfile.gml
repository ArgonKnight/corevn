/*
* scr_Write_Logfile
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

if ( global.DebugMode == 1)
{
    file_text_write_string( global.Logfile, argument0 );
    file_text_writeln( global.Logfile );
}

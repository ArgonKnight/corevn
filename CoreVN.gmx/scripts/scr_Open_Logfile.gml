/*
* scr_Open_Logfile
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

var fname;
fname = working_directory + "\log.txt";

globalvar Logfile;
global.Logfile = file_text_open_write( fname);

file_text_write_string( global.Logfile, "Log file started " + date_datetime_string( date_current_datetime() ) );

file_text_writeln( global.Logfile );




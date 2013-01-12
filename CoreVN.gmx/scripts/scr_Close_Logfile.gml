/*
* scr_Close_logfile
* 
*/

/*
* Version History
* 2013-01-11:   created
*/

file_text_write_string( global.Logfile, "Log file ended " + date_datetime_string( date_current_datetime() ) );

file_text_close( global.Logfile);

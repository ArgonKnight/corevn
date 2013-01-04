/*
* scr_CommandLine
* This script handle the command line options
* that will override the default values
*/

/*
* Version History
* 2012-01-04: created
*/

/*
* full example:
* corevn.exe storyfile
*/

var param_num;

param_num = parameter_count();

if (param_num > 0)
{
    var i;
    for (i = 0; i < param_num; i += 1)
    {
       //p_string = parameter_string(i + 1);
    }
}

/*********************************************************************************** 
|
| Use the CHMLink() function to open a topic in a different CHM when: 
| 1. You want to open that topic in the current window.
| 2. Part of the link (probably the CHM name) needs to be localized, which requires
|    the CHM name be defined in a Javascript variable.
|
| Example: <a href="javascript:CHMLink(L_mychm, 'topic.html');">
|
***********************************************************************************/

function CHMLink() {
   var inputfiles = [];

   // Can't do function overrides in Javascript, so need to be more creative about 
   // accepting varying numbers of parameters. Check to see if the second argument 
   // is a string. If it's not, it means CHM+topic were passed in as a single 
   // parameter. So, split at '::/'
   if (typeof(arguments[1]) != "string") {
      inputfiles = arguments[0].split("::/");
   }
   // Otherwise, assume first argument is the chm name and second argument is the html.
   else {
      inputfiles[0] = arguments[0];
      inputfiles[1] = arguments[1];
   }
   
   window.location=inputfiles[0]+"::/"+inputfiles[1];
}
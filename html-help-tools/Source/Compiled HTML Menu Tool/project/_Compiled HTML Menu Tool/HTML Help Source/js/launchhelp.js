

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Implement the following three functions however you see fit. 
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// handleMissingHelpAsstOnPageLoad() is called when the page loads if Helpasst.dll is not present. For example, instead of 
// using alert() to create a pop-up, you could redirect people to another page:
// 
// function handleMissingHelpAsstOnPageLoad() {
//    window.location = "lvhelp.chm::/helpasstmissing.html";
// }
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function handleMissingHelpAsstOnPageLoad() {

}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// handleMissingHelpAsstOnLinkActivate() is called when someone clicks a link if helpasst.dll is not present. Modify this 
// function if you want to handle the error one way when the page loads and handle it a different way when someone clicks a link.
//
// For example, you could use the alert() function when the page loads, but do a redirect when someone clicks a link.
//
// Do not modify this function if you want the same error handling both when the page loads and when someone clicks a link.  
// 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function handleMissingHelpAsstOnLinkActivate() {
   handleMissingHelpAsstOnPageLoad();
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// handleMissingHelpFile() is called when helpasst DLL can't find the CHM you tried to link to. Again, you 
// could just use alert() to make a pop-up, or you could redirect people to a different page.
// 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function handleMissingHelpFile(CHMName) {
   alert ("Failed to launch " + CHMName + ". Confirm that " + CHMName +  " exists in the help directory for the product that includes " + CHMName + ". If " + CHMName + " does not exist, you might need to reinstall the product that includes that help file.");
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Do not modify any of the following
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var chmDelimiter = "::/";
var launcher;
var launcherSuccess = false;

try {
   launcher = new ActiveXObject('NI.HelpAssistant');
   launcherSuccess = true;
}
catch(e) {
   handleMissingHelpAsstOnPageLoad();
}

/****************************************************************************************************************************************
LaunchHelp(CHMPath, isTopLevel)
Launches the specified CHM file and topic in a separate window. This function first looks in the current directory for the CHM.
If it does not find the specified CHM there, this function checks the registry key HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\HTML Help
for the location. 

CHMPath - String containing a CHM/topic combination, separated by "::/". This is the same format that the window.showHelp() method 
and plain "<a href" links use. Do not include any sort of linking protocols, such as "mk:@MSITStore:", or absolute paths. The effects of doing 
so are undefined.

Note: I do not know what happens with the topic name if it includes a directory path (/tasks/generated/thermocouples.html) or 
an anchor (sensors.html#thermocouples)

isTopLevel - OPTIONAL. Specifies to make the new window always stay on top of the old CHM window. This parameter defaults to false 
if you do not pass anything else in.

Example:
Use a <a href="javascript:LaunchHelp('daqhelp.chm::/thermocouples.html')">thermocouple</a> to measure temperature.
Use a <a href="javascript:LaunchHelp('daqhelp.chm::/thermocouples.html, true)">thermocouple</a> to measure temperature. --Window stays on top.

*****************************************************************************************************************************************

LaunchHelp(CHMName, helpTopic, isTopLevel)
Launches the specified CHM file and topic in a separate window. This function first looks in the current directory for the CHM.
If it does not find the specified CHM there, this function checks the registry key HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\HTML Help
for the location. 

CHMName - The filename of the CHM. Do not include any sort of linking protocols, such as "mk:@MSITStore:", or absolute paths. 
The effects of doing so are undefined.
Note: Passing the CHM name and help topic in separately allows you to pass variables in, which can be useful if localized versions of files have 
different filenames. Localization can just translate the variable

helpTopic - The topic filename. 

Note: I do not know what happens with the topic name if it includes a directory path (/tasks/generated/thermocouples.html) or 
an anchor (sensors.html#thermocouples)

isTopLevel - OPTIONAL. Specifies to make the new window always stay on top of the old CHM window. This parameter defaults to false 
if you do not pass anything else in.

Examples:
Use a <a href="javascript:LaunchHelp('daqhelp.chm', 'thermocouples.html')">thermocouple</a> to measure temperature.
Use a <a href="javascript:LaunchHelp('daqhelp.chm', 'thermocouples.html', true)">thermocouple</a> to measure temperature. --Window stays on top.

Examples using a variable for CHMName - Keeps the <a> tag from changing:
English:
helpfiles_eng.js:
var daqhelp = "daqhelp.chm";

Help Topic:
Use a <a href="javascript:LaunchHelp(daqhelp, 'thermocouples.html')">thermocouple</a> to measure temperature.

German:
helpfiles_deu.js:
var daqhelp = "daqhelp_deu.chm";

Help Topic: 
Ein <a href="javascript:LaunchHelp(daqhelp, 'thermocouples.html')">thermocouple</a> fur temperatur gemeasuren.

****************************************************************************************************************************************/

function LaunchHelp() {
   var isTopLevel = false;
   var len = arguments.length;
   var inputfiles = [];

   if (typeof(arguments[len-1]) == "boolean")
   {
      isTopLevel = arguments[len-1];
   }

   if (typeof(arguments[1]) != "string") {
      inputfiles = arguments[0].split(chmDelimiter);
   }
   else {
      inputfiles[0] = arguments[0];
      inputfiles[1] = arguments[1];
   }
    
   if (launcherSuccess) {
      if (!launcher.ShowHelp(inputfiles[0], inputfiles[1], isTopLevel))
         handleMissingHelpFile(inputfiles[0]);
   }
   else {
      handleMissingHelpAsstOnLinkActivate();
   }
}

function LaunchDevConsid(topic) {
   var URL = "devconsid.chm::/" + topic;
   window.location = URL;
}
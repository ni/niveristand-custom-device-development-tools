

/*************************************************************
*
*     Dynamically display or hide blocks of content based on the availability of a particular CHM
*	  (Requires domtools.js, arraytools.js, osbrowser.js, and dynamicclients.js)
*				  
*************************************************************/

if(!availableFiles) {
   var availableFiles = new Array;
}

/* Faster checkParagraphs() function, but doesn't work for printing
function checkParagraphs() {
	//Loop through the list of CHMs
	for(index=0;index<alldynamicclients.length;index++) {
		var dynamicclient  = alldynamicclients[index];
		//When the CHM is not in the availableFiles array, don't display the dynamic content
		if(!searchArray(availableFiles, dynamicclient)) {
			var firstCSS = document.styleSheets[0];
			if (firstCSS.addRule) {
				firstCSS.addRule("." + dynamicclient, "display: none");
				firstCSS.addRule("a." + dynamicclient, "display: inline");
				//firstCSS.addRule("body.", "font-size: 4pt");
			}
			else if (firstCSS.insertRule) {
				firstCSS.insertRule("." + dynamicclient + "{display: none}", firstCSS.cssRules.length);
				firstCSS.insertRule("a." + dynamicclient + "{display: inline}", firstCSS.cssRules.length);
			}
		}
	}
}
*/

//Using old, slower checkParagraphs() function due to printer problem (CAR 4I5EP5HQ)
function checkParagraphs() 
{
	var index=0;
	var elementsToTest = new Array;
	elementsToTest= getElementsByClass("checkFile");
	for(index=0;index<elementsToTest.length;index++) 
	{	var classes= getClasses(elementsToTest[index]);
		var found = 0;
		var index2 = 0;
		for (index2 = 0; index2 < classes.length; index2++)
		{	if (searchArray(availableFiles, classes[index2]))
			{	found = 1;
				break;
			}
		}
		if (found == 0)
			elementsToTest[index].style.display = "none";
	}
}


if (typeof(registerForInitPage) == "function") {
	registerForInitPage(checkParagraphs);
}

/**************************************************************
*
* Dynamically write javascript variables that contain single-sourced content
* This function is called by database-generated topics to display XML-sourced dynamic content
*
***************************************************************/

function writeVarRefs(id) {

	for (dyncntindx=0; dyncntindx < ss_dynamic_clients.length; dyncntindx++) {
		 {	//loop through the variables and render their contents via document.writeln()
			var contentvar = ss_dynamic_clients[dyncntindx] + id;
			document.writeln(
				"<script type=text/javascript>"
				+ "if (typeof("
				+ contentvar
				+ ") != 'undefined')"
				+ "document.writeln("
				+ contentvar
				+ ")</script>");
		}
	}
}

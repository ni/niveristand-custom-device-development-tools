/*************************************************************
*
*     Registers files as clients for dynamic content. To register a file as a dynamic content client, 
*		add the name of your CHM file to the alldynamicclients array on a new line, followed by a comma.
*		However, the last file in the list should NOT be followed by a comma.
*				  
*************************************************************/
var alldynamicclients = new Array(
	"criodevicehelp",
	"DataFinderTK",
	"daqmxtutorial",
	"embserial",
	"embsharedvi",
	"expresswb",
	"glang",
	"gswoict",
	"inlinecnode",
	"internet",
	"lvaft",
	"lvaftconcepts",
	"lvarmdialog",
	"lvarmhelp",
	"lvasptconcepts",
	"lvcdsimshrd",
	"lvcgenhelp",
	"lvconcepts",
	"lvctrldsgn",
	"lvdatabase",
	"lvdettmerge",
	"lvdfdtconcepts",
	"lvdigfiltdestk",
	"lvdsc",
	"lvdschelp",
	"lvdscprop",
	"lvfpga",
	"lvfpgaconcepts",
	"lvfpgahelp",
	"lvfpgamain",
	"lvioscan",
	"lvmve",
	"lvoffice",
	"lvpdadialog",
	"lvpdagsm",
	"lvpid",
	"lvpid",
	"lvrgthelp",
	"lvrtdialog",
	"lvrtconcepts",
	"lvrthowto",
	"lvrthelp",
	"lvrtvihelp",
	"lvsc",
	"lvscconcepts",
	"lvschowto",
	"lvsim",
	"lvsimconcepts",
	"lvsimtkconcepts",
	"lvsitconcepts",
	"lvspt",
	"lvsysid",
	"lvsysidconcepts",
	"lvtextmathmain",
	"lvtimefreqtk",
	"lvtimeseriestk",
	"lvtpcdialog",
	"lvtpcgsm",
	"lvtrace",
	"lvtracehelp",
	"lvutfconcepts",
	"lvutf",
	"lvwavelettk",
	"lvwsnhelp",
	"lvvianalyzer",
	"lvxpe",
	"oictref",
	"optsenmain",
	"optsenref",
	"p2pstreamhelp",
	"riohelprt",
	"sndvibtk",
	"sndvibasst",
	"svmain",
	"target2devicehelp",
	"veristand",
	"veristandmerge"
	);

//Registers files as clients for single-sourced dynamic content
//(typically, this content is sourced in XML and displayed in database-generated topics)
var ss_dynamic_clients = new Array ("lvrthelp","lvfpga","lvpdagsm","lvtpcgsm");

for (i = 0; i < alldynamicclients.length; i++) {
	var client = alldynamicclients[i];
	var chm_js = "ms-its:" + client + ".chm::/" + client + ".js";
	include_js(chm_js);
}



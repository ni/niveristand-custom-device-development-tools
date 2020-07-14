﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Menus" Type="Folder">
			<Item Name="functions_ni_lib_Compiled_HTML_Menu_Tool.mnu" Type="Document" URL="../Menus/functions_ni_lib_Compiled_HTML_Menu_Tool.mnu"/>
		</Item>
		<Item Name="project" Type="Folder">
			<Item Name="_Compiled HTML Menu Tool" Type="Folder">
				<Item Name="HTML Help Source" Type="Folder">
					<Item Name="css" Type="Folder">
						<Item Name="expandable_tree.css" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/css/expandable_tree.css"/>
						<Item Name="VSsystemexplorer.css" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/css/VSsystemexplorer.css"/>
					</Item>
					<Item Name="js" Type="Folder">
						<Item Name="arraytools.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/arraytools.js"/>
						<Item Name="checkinstalled.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/checkinstalled.js"/>
						<Item Name="common.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/common.js"/>
						<Item Name="cssframes.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/cssframes.js"/>
						<Item Name="domtools.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/domtools.js"/>
						<Item Name="dynamiccontent.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/dynamiccontent.js"/>
						<Item Name="dynamicjumps.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/dynamicjumps.js"/>
						<Item Name="dynamiclinks.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/dynamiclinks.js"/>
						<Item Name="expandable_tree.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/expandable_tree.js"/>
						<Item Name="feedbacklink.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/feedbacklink.js"/>
						<Item Name="Globals.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/Globals.js"/>
						<Item Name="initpagedyn.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/initpagedyn.js"/>
						<Item Name="launchhelp.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/launchhelp.js"/>
						<Item Name="linking.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/linking.js"/>
						<Item Name="objectnames.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/objectnames.js"/>
						<Item Name="osbrowser.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/osbrowser.js"/>
						<Item Name="pdf.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/pdf.js"/>
						<Item Name="polyviselect.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/polyviselect.js"/>
						<Item Name="stylesheets.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/stylesheets.js"/>
						<Item Name="variables.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/variables.js"/>
						<Item Name="web.js" Type="Document" URL="../project/_Compiled HTML Menu Tool/HTML Help Source/js/web.js"/>
					</Item>
				</Item>
				<Item Name="Wizard" Type="Folder">
					<Item Name="Copy Template Files.vi" Type="VI" URL="../project/_Compiled HTML Menu Tool/Wizard/Copy Template Files.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Create HTML Files.vi" Type="VI" URL="../project/_Compiled HTML Menu Tool/Wizard/Create HTML Files.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="New CHM Wizard.vi" Type="VI" URL="../project/_Compiled HTML Menu Tool/Wizard/New CHM Wizard.vi">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
					<Item Name="Wizard State.ctl" Type="VI" URL="../project/_Compiled HTML Menu Tool/Wizard/Wizard State.ctl">
						<Property Name="marked" Type="Int">0</Property>
					</Item>
				</Item>
				<Item Name="Build CHM.vi" Type="VI" URL="../project/_Compiled HTML Menu Tool/Build CHM.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="html_template.htm" Type="Document" URL="../project/_Compiled HTML Menu Tool/html_template.htm"/>
			</Item>
			<Item Name="Compiled Help Menu Wizard.vi" Type="VI" URL="../project/Compiled Help Menu Wizard.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
		</Item>
		<Item Name="vi.lib" Type="Folder">
			<Item Name="CHM Generator" Type="Folder">
				<Item Name="CHM Generator.lvclass" Type="LVClass" URL="../vi.lib/CHM Generator/CHM Generator.lvclass"/>
			</Item>
			<Item Name="Keyed Value Tree" Type="Folder">
				<Item Name="Keyed Value Tree.lvclass" Type="LVClass" URL="../vi.lib/Keyed Value Tree/Keyed Value Tree.lvclass"/>
			</Item>
			<Item Name="Load CHM Page.vi" Type="VI" URL="../vi.lib/Load CHM Page.vi">
				<Property Name="marked" Type="Int">0</Property>
			</Item>
		</Item>
		<Item Name="Post-Build Action.vi" Type="VI" URL="../Post-Build Action.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl">
					<Property Name="marked" Type="Int">0</Property>
				</Item>
			</Item>
			<Item Name="Copy Built Files.vi" Type="VI" URL="../../../../shared/Copy Built Files.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Move Source" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{5CA91CF1-7D39-47D0-B5A7-AB3A2ADC64AC}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Move Source</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">/C/ProgramData/National Instruments/InstCache/17.0</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">/C/Users/nitest/Documents/LabVIEW Data/2017(32-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[4].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[5].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_excludeDependentDLLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Built</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Post-Build Action.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{C9CD229C-BA96-4A0A-9BAD-03C275F15C94}</Property>
				<Property Name="Bld_removeVIObj" Type="Int">1</Property>
				<Property Name="Bld_version.build" Type="Int">7</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../Built</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Built/data</Property>
				<Property Name="Destination[2].destName" Type="Str">API Directory</Property>
				<Property Name="Destination[2].path" Type="Path">../Built/vi.lib/NI/Compiled HTML Menu Tool</Property>
				<Property Name="Destination[2].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[3].destName" Type="Str">Project Directory</Property>
				<Property Name="Destination[3].path" Type="Path">../Built/project</Property>
				<Property Name="Destination[3].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[4].destName" Type="Str">Menus Directory</Property>
				<Property Name="Destination[4].path" Type="Path">../Built/Menus/Categories/VeriStand Development Tools</Property>
				<Property Name="Destination[4].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="DestinationCount" Type="Int">5</Property>
				<Property Name="Source[0].itemID" Type="Str">{58FAC1B9-93ED-4A0F-B797-22C7C543C20B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Post-Build Action.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">4</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Menus</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/project</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/vi.lib</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
			</Item>
		</Item>
	</Item>
</Project>

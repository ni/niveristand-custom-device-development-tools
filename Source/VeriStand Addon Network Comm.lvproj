<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
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
		<Item Name="NI VeriStand Addon Network Comm Shared.lvlib" Type="Library" URL="../vi.lib/NI/NIVS Addon Network Comm/Shared/NI VeriStand Addon Network Comm Shared.lvlib"/>
		<Item Name="NI VeriStand Addon Network Comm.lvlib" Type="Library" URL="../vi.lib/NI/NIVS Addon Network Comm/Engine/NI VeriStand Addon Network Comm.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="AMC.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/AMC/AMC.lvlib"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Custom Device API.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI VeriStand/Custom Device API/Custom Device API.lvlib"/>
				<Item Name="Custom Device Utility Library.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI Veristand/Custom Device Tools/Custom Device Utility Library/Custom Device Utility Library.lvlib"/>
				<Item Name="Data Access Engine.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/NIVS Inline Async API/_Data Access Engine/Data Access Engine.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="NI STM.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/STM/NI STM.lvlib"/>
				<Item Name="NI_FTP.lvlib" Type="Library" URL="/&lt;vilib&gt;/FTP/NI_FTP.lvlib"/>
				<Item Name="NIVeriStand_DataServices.dll" Type="Document" URL="/&lt;vilib&gt;/NI Veristand/Custom Device API/data/NIVeriStand_DataServices.dll"/>
				<Item Name="Simple Generate Error.vi" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/Simple Generate Error.vi"/>
				<Item Name="TCP Check Connection (By Reference).vi" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/TCP Check Connection (By Reference).vi"/>
				<Item Name="TCP Connection Manager (By Reference).vi" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/TCP Connection Manager (By Reference).vi"/>
				<Item Name="TCP Connection Manager Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/TCP Connection Manager Reference.ctl"/>
				<Item Name="TCP Connection Manager State Variables.ctl" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/TCP Connection Manager State Variables.ctl"/>
				<Item Name="TCP Initialize Connection Manager (By Reference).vi" Type="VI" URL="/&lt;vilib&gt;/NI/STM/Connection Manager/TCP/Advanced/TCP Initialize Connection Manager (By Reference).vi"/>
				<Item Name="Tools_KeyedArray.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/Keyed Array/Tools_KeyedArray.lvlib"/>
				<Item Name="Tools_String.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/Tools/String/Tools_String.lvlib"/>
				<Item Name="VS Inline Async API.lvlib" Type="Library" URL="/&lt;vilib&gt;/NI/NIVS Inline Async API/_VS Inline Async API/VS Inline Async API.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

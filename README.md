VeriStand Addon System Definition Utilities
===================

The VeriStand Addon System Definition Utilities makes creating an addon's system definition API simpler and significantly more efficient.  It also works in LabVIEW and TestStand (which is not true of the shipping VeriStand functions).  It also allows for easier importing and exporting of your addon.

### Usage ###
Install the VI package in the Built folder.

### LabVIEW Version ###

LabVIEW 2016

### Built Availability ###

Use the attached VI Package in the Built folder.

### Quality, Limitations ###

The IP is new and is not in wide use yet. The API is using CDS structures with OFFLINE==TRUE and OFFLINE==FALSE(Default) options for the VI implementations that use VeriStand .NET API  => the lack of CDS structures with these options might cause compile errors when building Engine libraries for Custom Devices for RT Targets.

OFFLINE==TRUE - marks code to be executed outside the context of VeriStand, for example an API in a normal LabVIEW project.
OFFLINE==FALSE(Default) - marks code that can be executed within the context of VeriStand.

The reason is that due to cross-referencing, the Advanced System Definition API library and some of it's member VIs might included in the Engine builds for the RT targes, and this will lead to errors during builds ( since .NET controls used in this library are not supported on RT Targets).

### Dependencies ###

NI VeriStand 2016

### License ###

*This repository and any materials provided by NI therein are provided AS IS. NI DISCLAIMS ANY AND ALL LIABILITIES FOR AND MAKES NO WARRANTIES, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY WARRANTIES OF MERCHANTABILITY, FITNESS FOR  PARTICULAR PURPOSE, OR NON-INFRINGEMENT OF INTELLECTUAL PROPERTY. NI shall have no liability for any direct, indirect, incidental, punitive, special, or consequential damages for your use of the repository or any materials contained therein.*

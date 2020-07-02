# NI VeriStand Custom Device Development Tools
The **niveristand-custom-device-development-tools** repository provides a combination of dependencies commonly used in the development of custom devices. The intended audience includes custom device developers and integrators

## LabVIEW Version
The LabVIEW source for this repository is saved for LabVIEW 2017, but is forward compatible to newer versions.

The source version will increase over time as newer releases of VeriStand are released. A current version + three years back model will be used.

## Dependencies
The following dependencies are used by some or all of the included components of this repository. They can all be found in VI Package Manager and are hosted on the LabVIEW Tools Network.

- jki_labs_tool_vi_tester-3.0.2.294-1.ogp
- jki_lib_easyxml-3.0.0.170.vip
- jki_lib_json_serialization-1.1.10.37.vip
- jki_lib_serialization-1.0.1.14.vip
- jki_lib_unicode-1.0.0.7.vip
- jki_lib_vi_tester_junit_xml_results-2.0.1.16.vip
- jki_rsc_toolkits_palette-1.1-1.ogp
- ni_lib_amc-3.3.1.22.vip
- ni_lib_gxml-1.4.2.8.vip
- ni_lib_keyed_array-2.0.0.11.vip
- ni_lib_stm-3.1.0.9.vip
- ni_lib_string-2.0.0.5.vip
- oglib_appcontrol-4.1.0.7.vip
- oglib_array-4.1.1.14.vip
- oglib_error-4.2.0.23.vip
- oglib_file-4.0.1.22.vip
- oglib_lvdata-4.2.0.21.vip
- oglib_string-4.1.0.12.vip

## Usage
### Included Components
The following components have been merged into the repository from other, individual repositories on GitHub. The components were added as subtrees to retain their individual commit history.
|Component name|Sub-folder in repository|Migrated from repository|Date subtree was integrated|
|---|---|---|---|
|Advanced System Definition Utilities|advanced-sysdef-api|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-System-Definition-Utilities|2020-07-02|
|Compiled HTML Menu Tool|html-help-tools|https://github.com/NIVeriStandAdd-Ons/HTML-Help-File-Tools|2020-07-02|
|Network Comm API|network-comm|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-Network-Comm|tbd|
|Hardware Resource Discovery|hardware-discovery|https://github.com/NIVeriStandAdd-Ons/Hardware-Resource-Discovery|tbd|
|Inline Async API|inline-async-api|https://github.com/ni/niveristand-custom-device-inline-async-api|2020-06-26|
|Import and Export Tool|import-export|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-CD-Import-and-Export-Tool|2020-07-02|
|Error API|error-api|https://github.com/NIVeriStandAdd-Ons/VeriStand-Error-API|2020-07-02|
|LabVIEW Memory Manager|lv-memory-manager|https://github.com/ni/labview-memory-management-tools|2020-06-22|

### Releases
This repository will regularly release builds of the dependencies using NI Packages per LabVIEW version. Custom device developers and open-source contributors should look for updated dependencies before submitting code to custom device repositories on github.com/ni.

## Git History & Rebasing Policy
Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License
The NI VeriStand Custom Device Development Tools are licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.

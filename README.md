# NI VeriStand Custom Device Development Tools
The **niveristand-custom-device-development-tools** repository provides a combination of dependencies commonly used in the development of custom devices. The intended audience includes custom device developers and integrators.

## LabVIEW Version
The LabVIEW source for this repository is saved for LabVIEW 2017, but is forward compatible to newer versions.

The source version will increase over time as newer releases of VeriStand are released. A current version + three years back model will be used.

## Dependencies
The following dependencies are used by some or all of the included components of this repository.

### VI Package Manager (hosted on the LabVIEW Tools Network)
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

### External
- [Microsoft HTML Help Workshop](https://www.microsoft.com/en-us/download/details.aspx?id=21138)

## Usage
### Included Components
The following components have been merged into the repository from other, individual repositories on GitHub. The components were added as subtrees to retain their individual commit history.
|Component name|Sub-folder in repository|Migrated from repository|Commit at migration|Date subtree was integrated|
|---|---|---|---|---|
|Advanced System Definition Utilities|advanced-sysdef-api|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-System-Definition-Utilities|[9d5890e](https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-System-Definition-Utilities/commit/9d5890eb49f2fc5c434798badb0cf094fed26971)|2020-07-02|
|Compiled HTML Menu Tool|html-help-tools|https://github.com/NIVeriStandAdd-Ons/HTML-Help-File-Tools|[b7313ef](https://github.com/NIVeriStandAdd-Ons/HTML-Help-File-Tools/commit/b7313efff653019f935e32cdbf198fdcc96947bc)|2020-07-02|
|Network Comm API|network-comm|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-Network-Comm|[d1d0284](https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-Network-Comm/commit/d1d0284e4231374ae834cd6dbf2412a6005dc311)|2020-07-10|
|Hardware Resource Discovery|hardware-discovery|https://github.com/NIVeriStandAdd-Ons/Hardware-Resource-Discovery|[a6d6976](https://github.com/NIVeriStandAdd-Ons/Hardware-Resource-Discovery/commit/a6d6976abf230167b8d534f67f64ab1786337d7f)|2020-07-10|
|Inline Async API|inline-async-api|https://github.com/ni/niveristand-custom-device-inline-async-api|[1de9f30](https://github.com/ni/niveristand-custom-device-inline-async-api/commit/1de9f30aad586b879a27f8e58cb80218e1df76db)|2020-06-26|
|Import and Export Tool|import-export|https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-CD-Import-and-Export-Tool|[9bf1c00](https://github.com/NIVeriStandAdd-Ons/VeriStand-Addon-CD-Import-and-Export-Tool/commit/9bf1c004985817ddabfead992f853cf064994f91)|2020-07-02|
|Error API|error-api|https://github.com/NIVeriStandAdd-Ons/VeriStand-Error-API|[e9d3eb2](https://github.com/NIVeriStandAdd-Ons/VeriStand-Error-API/commit/e9d3eb2148d2cab9452d25e1ea2b2a120602deb5)|2020-07-02|
|LabVIEW Memory Manager|lv-memory-manager|https://github.com/ni/labview-memory-management-tools|[4a542e2](https://github.com/ni/labview-memory-management-tools/commit/4a542e226cecc1243db6d32982f74b91b5c07874)|2020-06-22|

### Releases
This repository will regularly release builds of the dependencies using NI Packages per LabVIEW version. Custom device developers and open-source contributors should look for updated dependencies before submitting code to custom device repositories on github.com/ni.

## Git History & Rebasing Policy
Branch rebasing and other history modifications will be listed here, with several notable exceptions:
- Branches prefixed with `dev/` may be rebased, overwritten, or deleted at any time.
- Pull requests may be squashed on merge.

## License
The NI VeriStand Custom Device Development Tools are licensed under an MIT-style license (see LICENSE). Other incorporated projects may be licensed under different licenses. All licenses allow for non-commercial and commercial use.

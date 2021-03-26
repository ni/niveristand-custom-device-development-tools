# Custom Device Serialization Library

The **Custom Device Serialization Library** converts VeriStand custom devices and other system definition elements to and from a standalone file, similar to the [Import/Export Tool](https://github.com/ni/niveristand-custom-device-development-tools/tree/main/import-export).

## Usage

The library is designed to work both within VeriStand and a standalone LabVIEW application.
For example, a custom device configuration exported in VeriStand can be imported into another system definition using LabVIEW, and vice-versa.

Custom devices typically expose the import and export functionality as a run-time menu or button in System Explorer.
When using System Explorer, the "in place" import VI is typically used to modify the existing custom device instance.

Many custom devices also provide an API for programmatic configuration.
When using the LabVIEW and .NET APIs to generate or modify system definitions, it may be desireable to import an exported custom device configuration as a new instance, rather than modifying an existing one.
In this case, the "as child" import VI should be used.

### External Dependencies

Handling external dependencies, such as those referred to by dependent node properties, is left to the custom device to support.
Each application has specific needs for how external files are copied, renamed, and otherwise modified, and as such this library does not consider them.

## Implementation

The library uses native VeriStand serialization mechanisms to save `BaseNodeType` objects to files.
The resulting file resembles the system definition XML format, and can be parsed and modified using the VeriStand-native `NationalInstruments.VeriStand.SystemDefinitionAPI` assembly.

All properties and attributes are persisted using the same representation as the original system definition.
This can have some surprising consequences - items such as unique identifiers and channel mappings are saved in the serialized file, leading to potentially undesirable behavior when the custom device is deserialized and imported into a new system definition.

The library automatically updates the `Identifier` attribute which is present on all nodes in VeriStand 2020 and newer, ensuring that each identifier has a globally unique value.

The library also provides a mechanism for removing broken mappings after import. It is left to individual custom devices to decide if this is desirable, and optionally call `Remove Broken Mappings.vi`.

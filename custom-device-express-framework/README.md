# Custom Device Express Framework

The Custom Device Express framework is an enhanced Custom Device development framework that auto-generates the System Explorer UI, Scripting API, orchestration code, serialization & deserialization of deployment settings and a test bench for ebugging based on the input provided in wizard.

**custom-device-express-framework** component in niveristand-custom-device-development-tools repository provides Custom Device Interfaces, NIVS Inline Async API (Express) and Custom Device Test Bench that are commonly used in the development of custom device using the Custom Device Express Framework.

## Components

### Custom Device Interfaces

A library of abstract interfaces that define the contract a NI VeriStand Custom Device must fulfill. It is built as a Packed Project Library (PPL) and installed into LabVIEW's `user.lib` for both Windows and RT Linux PXI targets.

The library contains three interface classes:

- **Custom Device** 
- **Custom Device API** 
- **Custom Device Deployment Hooks**
- **Custom Device Utility** — Internal utilities used by the framework .

### NIVS Inline Async API (Express)

The Inline Async API provides a framework for creating an inline addon with asynchronous processes. The framework provides initializing/launching/cleanup of the asynchronous VIs, error handling/reporting, and data transfer between inline and asynchronous VIs.

The library contains two components:

- **VS Inline Async API (Express)** 
- **Data Access Engine (Express)** 

### Custom Device Test Bench

Custom Device Test Bench provides Windows and RT Linux PXI target specific lvprojs for debugging user's Custom Device Engine code. 
- User's can place breakpoints in subVIs in the Custom Device Engine Code (the subVI needs to be a non re-entrant)
- Build all the necessary PPLs from the Custom Device Test Hooks lvproj (created in teh Custom Device Folder)
- Open **Run Test Bench.vi** and follow the instructions in the vi's front panel

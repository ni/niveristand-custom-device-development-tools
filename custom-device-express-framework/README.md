# Custom Device Express Framework

A framework that provides interfaces and implementations for building NI VeriStand Custom Devices using the inline async execution pattern.

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

- **VS Inline Async API (Express)** — The top-level async engine class. Implements the Custom Device lifecycle (`Initialize`, `Start`, `Read Data from HW`, `Write Data to HW`, `Close`) and manages async process coordination (`WaitOnStart`, `Report`).
- **Data Access Engine (Express)** — Manages channel data access for the async process. Supports read, write, and read/write channel modes with buffering, committing, and lookup operations.

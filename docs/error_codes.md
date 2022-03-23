# Custom Device Error Codes

Historically custom devices have used error codes within the user-defined ranges.
This has led to unintentional error code conflicts between different custom devices.

To mitigate this, VeriStand custom devices now have a dedicated error code range: `732000` to `732999`, and `-732000` to `-732999`.
Individual custom devices may be assigned a portion of this range; this document is the source of truth for these allocations.

## Requesting an Error Code Range

A new error code range can be requested by creating a pull request editing this document.

In general, custom devices should reserve `25` error codes (per positive/negative range), leaving a gap of `25` from existing allocations.
This allows custom devices which later need more error codes to reserve them contiguously, without over-allocating initially.

Smaller allocations are allowed, although discouraged to prevent fragmenting the error code range.

Error codes are allocated symmetrically for both positive and negative numbers.

## Allocated Error Codes

Only the positive error codes are listed below, although the custom device is also allocated the corresponding negative range.

| Begin    | End      | Custom Device |
|----------|----------|---------------|
| `732000` | `732024` | [Routing and Faulting](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732050` | `732074` | [SLSC Switch](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732100` | `732124` | [NI-SWITCH](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732150` | `732174` | [Scan Engine and EtherCAT](https://github.com/ni/niveristand-scan-engine-ethercat-custom-device) |
| `732200` | `732224` | [VeriStand Custom Device Development Tools](https://github.com/ni/niveristand-custom-device-development-tools) |
| `732250` | `732274` | [Ballard ARINC-429](https://github.com/ni/niveristand-ballard-arinc429-custom-device) |
| `732300` | `732324` | [Encoding and Decoding Library](https://github.com/ni/niveristand-ballard-arinc429-custom-device/tree/main/Source/Encoding%20and%20Decoding) |
| `732350` | `732374` | [Ballard MIL-STD 1553](https://github.com/ni/niveristand-ballard-milStd1553-custom-device) |
| `732400` | `732424` | [Embedded Data Logger](https://github.com/ni/niveristand-embedded-data-logger-custom-device) |
| `732450` | `732474` | NI-RDMA |
| `732500` | `732524` | [AIM ARINC-429](https://github.com/ni/niveristand-aim-arinc429-custom-device) |

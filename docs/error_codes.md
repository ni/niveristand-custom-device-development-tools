# Custom Device Error Codes

Historically custom devices have used error codes within the user-defined ranges.
This has led to unintentional error code conflicts between different custom devices.

To mitigate this, VeriStand custom devices now have a dedicated error code range: `732000` to `732999`, and `-732000` to `-732999`.
Individual custom devices may be assigned a portion of this range; this document is the source of truth for these allocations.

## Requesting an Error Code Range

A new error code range can be requested by creating a pull request editing this document.

In general, custom devices should reserve either `25` or `50` error codes (per positive/negative range).
Smaller allocations are allowed, although discouraged to prevent fragmenting the error code range.

Error codes are allocated symmetrically for both positive and negative numbers.

## Allocated Error Codes

Only the positive error codes are listed below, although the custom device is also allocated the corresponding negative range.

| Begin    | End      | Custom Device |
|----------|----------|---------------|
| `732000` | `732049` | [Routing and Faulting](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732050` | `732074` | [SLSC Switch](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732075` | `732099` | [NI-SWITCH](https://github.com/ni/niveristand-routing-and-faulting-custom-device) |
| `732100` | `732149` | [Scan Engine and EtherCAT](https://github.com/ni/niveristand-scan-engine-ethercat-custom-device) |

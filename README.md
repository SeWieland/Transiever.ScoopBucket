# Transiever Scoop Bucket

![CI](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/ci.yml/badge.svg)
![Excavator](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/excavator.yml/badge.svg)

Scoop manifests for the Transiever command-line tools.

## Install

Add the bucket once:

```powershell
scoop bucket add transiever https://github.com/SeWieland/Transiever.ScoopBucket
```

Install the CLI you need:

```powershell
scoop install transiever/msieve
scoop install transiever/srtx
scoop install transiever/olrx
scoop install transiever/tbrx
```

| Manifest | CLI                                                             | Platforms           |
| -------- | --------------------------------------------------------------- | ------------------- |
| `msieve` | Direct ManageSieve protocol operations                          | Windows x64 and x86 |
| `srtx`   | Rule inspection, optimization, Sieve generation, and deployment | Windows x64 and x86 |
| `olrx`   | Classic Outlook rule export and server synchronization          | Windows x64         |
| `tbrx`   | Experimental Thunderbird filter export and synchronization      | Windows x64         |

The manifests install self-contained release assets, so a separate .NET runtime is not required.

## Updates

Scoop's Excavator checks stable upstream GitHub releases every four hours and updates manifest versions and hashes.
Beta prereleases are intentionally excluded except for the unstable `tbrx` beta.
`tbrx` temporarily tracks prereleases under its permanent name and actively requests [redacted tester reports](https://github.com/SeWieland/Transiever.ThunderbirdResiever/issues).

Run the same manifest validation used by CI with:

```powershell
.\bin\test.ps1
```

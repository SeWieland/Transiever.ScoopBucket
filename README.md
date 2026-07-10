# Transiever Scoop Bucket

[![CI](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/ci.yml/badge.svg)](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/ci.yml)
[![Excavator](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/excavator.yml/badge.svg)](https://github.com/SeWieland/Transiever.ScoopBucket/actions/workflows/excavator.yml)

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
```

| Manifest | CLI | Platforms |
| --- | --- | --- |
| `msieve` | Direct ManageSieve protocol operations | Windows x64 and x86 |
| `srtx` | Rule inspection, optimization, Sieve generation, and deployment | Windows x64 and x86 |

The manifests install self-contained release assets, so a separate .NET runtime is not required.

## Updates

Scoop's Excavator checks stable upstream GitHub releases every four hours and updates manifest versions and hashes.
Beta prereleases are intentionally excluded.

Run the same manifest validation used by CI with:

```powershell
.\bin\test.ps1
```

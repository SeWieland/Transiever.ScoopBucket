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
| `msieve` | ManageSieve client to list, download, upload, and activate Sieve scripts | Windows x64 and x86 |
| `srtx`   | Create Sieve scripts from rule files; inspect, optimize, preview, and deploy | Windows x64 and x86 |
| `olrx`   | Export classic Outlook rules for Sieve generation or server synchronization | Windows x64         |
| `tbrx`   | Experimental Thunderbird filter export for Sieve generation and server sync | Windows x64         |

The manifests install self-contained release assets, so a separate .NET runtime is not required.

## Updates

Scoop's Excavator checks stable upstream GitHub releases every four hours and opens a manifest update pull request when it finds a new version.
The pull request is validated and merged automatically when it changes one supported manifest and the required checks pass.
Beta prereleases are intentionally excluded except for the unstable `tbrx` beta.
`tbrx` temporarily tracks prereleases under its permanent name and actively requests [redacted tester reports](https://github.com/SeWieland/Transiever.ThunderbirdResiever/issues).

Run the same manifest validation used by CI with:

```powershell
.\bin\test.ps1
```

## AI usage

Transiever is a personal hobby project created to solve practical problems I have encountered myself.

AI is used heavily throughout its development. It supports research, design exploration, implementation, debugging, and documentation.

The project is developed using test-driven development and reviewed by a human, me. Its direction, behavior, and quality remain guided by the problems it is intended to solve.

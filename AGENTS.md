# AGENTS.md

## Project Boundary

`Transiever.ScoopBucket` owns Windows Scoop manifests for released Transiever command-line tools.
It contains distribution metadata and validation automation only.

Source code, release asset production, CLI behavior, and release versioning remain in the owning source repositories.
Do not add beta manifests unless the bucket release policy changes explicitly.
`tbrx` is the sole temporary exception while ThunderbirdResiever is experimental.

## Layout

```text
bucket/                  Scoop manifests
bin/                     Bucket validation helpers
.github/workflows/       Manifest CI and Excavator updates
```

## Manifest Policy

Track stable GitHub releases only, except for the explicitly unstable `tbrx` beta.
Use the versioned self-contained Windows assets published by each source repository.
Keep architecture declarations aligned with the released assets.

Every manifest must define `checkver` and `autoupdate`.
Hashes must be SHA-256 values for the exact published archives.
Do not add credentials, installer side effects, or source-repository build logic.

## Validation

```powershell
.\bin\test.ps1
.\bin\checkver.ps1 msieve
.\bin\checkver.ps1 srtx
.\bin\checkver.ps1 olrx
.\bin\checkver.ps1 tbrx
```

Also install each changed manifest through a temporary local bucket and run the CLI with `--help`.
For `tbrx`, also export the source repository's synthetic Thunderbird profile fixture.

`tbrx` keeps its permanent manifest name while temporarily tracking prereleases and must show a testers-wanted note.
Switch its checker to stable-only at the first stable release without renaming the manifest.

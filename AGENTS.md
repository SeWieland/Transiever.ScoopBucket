# AGENTS.md

## Project Boundary

`Transiever.ScoopBucket` owns Windows Scoop manifests for released Transiever command-line tools.
It contains distribution metadata and validation automation only.

Source code, release asset production, CLI behavior, and release versioning remain in the owning source repositories.
Do not add beta manifests unless the bucket release policy changes explicitly.

## Layout

```text
bucket/                  Scoop manifests
bin/                     Bucket validation helpers
.github/workflows/       Manifest CI and Excavator updates
```

## Manifest Policy

Track stable GitHub releases only.
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
```

Also install each changed manifest through a temporary local bucket and run the CLI with `--help`.

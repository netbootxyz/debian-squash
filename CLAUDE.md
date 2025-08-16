# Debian Version Update Guide

This document provides instructions for creating new Debian version branches in the netboot.xyz debian-squash repository.

## Overview

This repository contains branches for different Debian versions and flavors. Each branch builds and releases Debian live filesystem squashfs files for netboot.xyz.

## Branch Structure

Each Debian version has multiple flavor branches following the pattern: `{flavor}-{version}`

Standard flavors:
- `core` (standard/minimal)
- `gnome`
- `cinnamon`
- `kde`
- `lxde`
- `lxqt`
- `mate`
- `xfce`

## Creating New Version Branches

When Debian releases a new version, follow these steps to create corresponding branches:

### 1. Identify Source Branches
List all branches for the current version:
```bash
git branch -a | grep -E "{current_version}$"
```

### 2. For Each Flavor Branch

Create new branch from the existing version:
```bash
git checkout {flavor}-{old_version}
git checkout -b {flavor}-{new_version}
```

### 3. Update Files in Each New Branch

#### A. GitHub Workflow File
- Rename: `.github/workflows/{flavor}-{old_version}.yml` → `.github/workflows/{flavor}-{new_version}.yml`
- Update in the file:
  - Workflow name: `name: {flavor}-{new_version}`
  - Trigger branch: `branches: - {flavor}-{new_version}`
  - Environment variable: `BRANCH: {flavor}-{new_version}`
  - Checkout ref: `ref: {flavor}-{new_version}`

#### B. endpoints.template
Update the following:
- Endpoint name: `debian-{old_version}-{flavor}-squash` → `debian-{new_version}-{flavor}-squash`
- Kernel reference: `debian-{old_version}-live-kernel` → `debian-{new_version}-live-kernel`
- **IMPORTANT**: Keep `version: "REPLACE_VERSION"` as-is (dynamically populated by version.sh)

#### C. Files That Don't Need Changes
- `settings.sh` - Uses `current-live` URL path (version-agnostic)
- `version.sh` - Dynamically extracts current version from Debian servers
- `README.md` - Generic repository documentation

### 4. Commit and Push
```bash
git add .
git commit -m "Update {flavor}-{new_version} branch with Debian {new_version} references"
git push origin {flavor}-{new_version}
```

## Example: Creating Debian 14 from Debian 13

```bash
# For core flavor
git checkout core-13
git checkout -b core-14
mv .github/workflows/core-13.yml .github/workflows/core-14.yml

# Edit workflow file to replace all "13" references with "14"
# Edit endpoints.template to update endpoint name and kernel version
# Keep version field as "REPLACE_VERSION"

git add .
git commit -m "Update core-14 branch with Debian 14 references"
git push origin core-14

# Repeat for other flavors: gnome, cinnamon, kde, lxde, lxqt, mate, xfce
```

## Automation Tips

When updating multiple branches, you can use the MultiEdit tool or sed commands to batch update references:

```bash
# Example for workflow file updates
sed -i 's/core-13/core-14/g' .github/workflows/core-14.yml

# Example for endpoints.template
sed -i 's/debian-13-/debian-14-/g' endpoints.template
sed -i 's/debian-13-live-kernel/debian-14-live-kernel/g' endpoints.template
```

## Important Notes

1. **Version Placeholder**: Always keep `version: "REPLACE_VERSION"` in endpoints.template. This is replaced dynamically during the build process.

2. **CI/CD**: Each branch has its own GitHub Actions workflow that triggers on:
   - Push to the branch (excluding workflow file changes)
   - Weekly schedule (Fridays at 4 AM)
   - Manual workflow dispatch

3. **Testing**: After creating new branches, you can manually trigger the workflow to test the build process using GitHub's "Actions" tab.

4. **Debian Versions**: The actual Debian version number (e.g., 12.5.0) is extracted dynamically from Debian's servers by version.sh

## Troubleshooting

- If builds fail, check that the ISO URLs in settings.sh match Debian's current directory structure
- Verify that version.sh correctly extracts version numbers from SHA256SUMS
- Ensure GitHub Actions has necessary permissions for creating releases

## Additional Resources

- [netboot.xyz build pipelines](https://github.com/netbootxyz/build-pipelines)
- [Debian CD Images](https://cdimage.debian.org/debian-cd/current-live/)
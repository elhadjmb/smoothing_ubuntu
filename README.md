# Smoothing Ubuntu

## Overview
`smoothing_ubuntu` offers a set of Python scripts to streamline package management on Ubuntu. These scripts enable easy installation, removal, and updating of software packages via various package managers like nala, snap, and flatpak.

## Features
- **installs**: Simplifies installing packages.
- **removes**: Assists in removing packages.
- **updates**: Facilitates system and package updates.

## Prerequisites
- Python 3
- `termcolor` Python package
- Ubuntu system (20.04 or later recommended)

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/elhadjmb/smoothing_ubuntu.git
   cd smoothing_ubuntu
   ```
2. Make the scripts executable and copy them to `/usr/local/bin`:
   ```bash
   chmod +x installs removes updates
   sudo cp installs removes updates /usr/local/bin
   ```

## Usage and Examples

### Installing Packages with `installs`
Run the script with package names to install:
```bash
installs package1 package2
```
Force installation with auto-approval for prompts:
```bash
installs package1 package2 -y -f
```
Update package lists before installing:
```bash
installs package1 package2 -u
```

### Removing Packages with `removes`
Remove specified packages:
```bash
removes package1 package2
```
Force removal and auto-clean cache after removal:
```bash
removes package1 package2 -y -f -c
```
Perform a dry run to see what would be done:
```bash
removes package1 package2 -d
```

### Updating System and Packages with `updates`
Update package lists:
```bash
updates -p
```
Upgrade all packages:
```bash
updates -u
```
Update system and distribution:
```bash
updates -s -d
```

## Contributing
Contributions to `smoothing_ubuntu` are welcome. Please follow the standard GitHub fork and pull request workflow for contributions.

## License
This project is open-sourced under the MIT License.

## Contact
For any queries or support, please open an issue on the GitHub repository page.

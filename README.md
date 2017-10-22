# LogInstall
Wrapper around apt-get to log installs when changing linux OS's or setting up a new computer.

### First Time Setup:

1. Clone this repo to wherever you want it on your new system.
2. Run setup.sh as root. This will add the repo directory to your PATH environment variable.
3. If you have a package_log from an older system, do

	$ install_from_log.sh */path/to/package_logs.txt*

### Regular Usage:

When you want to install a new package that you want to log, simply:

	$ log_install.sh package

Or, if you have multiple packages to install:

	$ log_install.sh package1 package2 ... packageN

If you want to list the packages you have logged,

	$ check_install_logs.sh

p.s: I'm probably going to keep my personal intsall logs up to date in this repo, feel free to use them to install from if you wish.

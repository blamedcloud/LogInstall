# LogInstall
Wrapper around apt-get to log installs when changing linux OS's or setting up a new computer.

### First Time Setup:

Clone this repo to wherever you want it on your new system.

Run setup\_bin.sh in order to symlink the scripts into your $HOME/bin folder.
This assumes that $HOME/bin is on your $PATH, or else this doesn't really do anything useful.

	$ cd /path/to/LogInstall
	$ ./setup_bin.sh

If you have a package\_log from an older system, do

	$ install_from_log.sh /path/to/package_logs.txt


### Regular Usage:

When you want to install a new package that you want to log, simply:

	$ log_install.sh package

Or, if you have multiple packages to install:

	$ log_install.sh package1 package2 ... packageN

If you want to list the packages you have logged,

	$ check_install_logs.sh

p.s: I'm probably going to keep my personal install logs up to date in this repo, feel free to use them to install from if you wish.

### Future Updates: (don't hold your breath)

1. Eventually I plan to introduce some sort of profile/config file where you can set a few things, such as
	* installer (so you could use something other than apt-get)
	* log directory (so you could put the logs somewhere other than $HOME/logs/)
	* log file names (if you don't like package\_logs.txt or failed\_install\_logs.txt for some reason)

2. Some sort of optional "yes |" functionality.

3. If I do enough with pip to justify it, I may add a logger for pip installs as well.


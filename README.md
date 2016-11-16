# Octoprint for resin.io

[OctoPrint](http://octoprint.org/) is a web interface for managing 3D printers.

## Installation and Usage

1. Create an account at [resin.io](https://dashboard.resin.io)
2. Create a new RaspberryPi3 application (might work on 1 and 2, but it's not
   been tested)
3. Clone this repo
4. Copy the git remote command and add resin to this repo as a remote
5. Push the code up to resin: `git push resin master`
6. While your image builds, download ResinOS and provision a device
7. Connect the device to your printer
8. Watch the dashboard. Once the application has downloaded and started, go to
   the device's IP address (found in the dashboard) and follow the instructions

Note: Data is persisted in the `/data` partition on the device itself, so it's
safe to deploy new versions of the application. Upgrades performed via the web
UI will not persist if you push changes to the application via the resin
builders.


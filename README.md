# Octoprint for resin.io

[OctoPrint](http://octoprint.org/) is a web interface for managing 3D printers.

## Installation and Usage

1. Create an account at [resin.io](https://dashboard.resin.io)
2. Create a new RaspberryPi application (This will work on all versions of the Pi, however the v1 Pi and Pi Zero's will be pretty slow)
3. Clone this repo
4. If you don't want to run the latest (master branch) OctoPrint code, select a tag [from the repo](https://github.com/foosel/OctoPrint/tree/master)
   and update Dockerfile.template tag. For example, 1.3.2 would look like:

   `ARG tag=1.3.2`

5. Copy the git remote command and add resin to this repo as a remote
6. Push the code up to resin: `git push resin master`
7. While your image builds, download ResinOS and provision a device
8. Connect the device to your printer
9. Watch the dashboard. Once the application has downloaded and started, go to
   the device's IP address (found in the dashboard) and follow the instructions

Note: Data is persisted in the `/data` partition on the device itself, so it's
safe to deploy new versions of the application. Upgrades performed via the web
UI will not persist if you push changes to the application via the resin
builders.

## Development / Contributing

1. Clone this repo
2. Make any changes you're interested in
3. Run `make build` to build the Dockerfile locally
	* Run `make run` to run OctoPrint locally
	* Run `make shell` to access a shell in the built container for debugging

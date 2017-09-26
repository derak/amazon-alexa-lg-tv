# Amazon Alexa LG TV - Docker Image for Raspberry Pi

Use your Echo or Echo Dot to turn on/off your LG TV.

I forked this from https://github.com/efpe/amazon-alexa-lg-tv
and turned into a docker image. I am using this on the Hypriot Docker Image for Raspberry Pi as my Docker host. Instructions to setup the docker host can be found here: https://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/

## Usage

- "Alexa, turn on TV"
- "Alexa, turn off the TV"

## Prerequisites

You need a TV with WebOS 3.

## Install & Use

- Enable "Mobile TV On" on your LG TV in the settings menu
- Clone this repository to your docker host
- Update `alexa-tv.py` with your tv's MAC address
- ```./build.sh && ./run.sh```
- When turning your TV off for the first time you will need to accept the connection initially by pressing OK on the remote

## Thanks

- https://github.com/efpe/amazon-alexa-lg-tv
- https://www.npmjs.com/package/lgtv
- https://github.com/toddmedema/echo

# peertube-rpi-setup

This is a guide for setting up Peertube on raspberry pi 4. To facilitate rapid deployment, we use docker here.
The docker configurations are forked from [here](https://github.com/Chocobozzz/PeerTube), with customization on armv7.

We replace the Peertube and Postfix image with custom builds since the original one does not support armv7.
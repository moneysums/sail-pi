# sail-pi

Sailing timer for the Raspberry Pi.

## Getting started

You need a working Raspberry Pi running Raspbian (tested with Buster) with the following:
* Raspbian with desktop software (the full 'desktop and recommended software' distribution is not
  required and will slow down updates)
* working internet connection
* HDMI display
* mouse (or touch-sensitive display)
* terminal connection through a keyboard or SSH (only required for installing sail-pi)

Open a terminal on the Pi and install sail-pi.

```bash
git clone https://github.com/moneysums/sail-pi.git
cd sail-pi
bash scripts/install.sh
```

## Development

To install a development branch on a Pi (e.g. `dev`) use
```bash
bash scripts/install.sh dev
```

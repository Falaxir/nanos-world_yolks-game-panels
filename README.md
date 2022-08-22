# Nanos World Dedicated Server - support for games panels

This repo is to support Nanos World on popular game panels like :

* https://pterodactyl.io
* https://cubecoders.com/AMP

# Installation

The guide is available here : https://docs.nanos.world/docs/next/core-concepts/server-manual/game-panels

# NOTE

The version of the game is on `release` if you want to change it to `bleeding-edge` you will probably need to edit manually the config files.

## Pterodactyl support

- [x] Installation
- [x] Launch
- [x] Update
- [x] Console
- [x] Custom launch variables
- [ ] Read and Edit config file*

*Use the built-in file browser instead.

## AMP support

- [x] Installation
- [x] Launch
- [x] Update
- [ ] Console*
- [x] Custom launch variables
- [ ] Read and Edit config file**

*Console is blank, but can send commands.
**Use the built-in file browser instead.

### Knowed bugs

#### AMP

Console is blank, but for some reason when stoping, magically display all the logs of the console since the begining :x

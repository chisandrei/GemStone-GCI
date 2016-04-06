# GemStone-GCI

# GemStone GCI Documentation

- [GemBuilder for C 3.2.x manual](https://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-GemBuilderforC-3.2.pdf) [pdf]
- [GemBuilder for C 3.3.x manual](https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-GemBuilderforC-3.3.pdf) [pdf]

C function declarations for each release can be found in `$GEMSTONE/include/gci.hf`.

# Installation

**Under Construction:** *The following instructions depend upon yet to be released capabilities. Use the [Alternate Installation Instructions](#alternate-installation-instructions) for now.*

A GemStone/S 64 stone is needed for using the GemStone GCI project. 
For that, we recommend installing and using [GsDevKit_home](https://github.com/GsDevKit/GsDevKit_home).
After [following the installation steps for **GsDevKit_home**](https://github.com/GsDevKit/GsDevKit_home#open-source-development-kit-for-gemstones-64-bit-), do the following in a bash shell:

```
cd $GS_HOME/shared/repos
git clone https://github.com/GsDevKit/GemStone-GCI.git
createStone -c -z $GS_HOME/shared/repos/GemStone-GCI/.smalltalk.ston gci_330 3.3.0
createClient -t pharo gciClient50 -v Pharo5.0  -s gci_330 -z $GS_HOME/shared/repos/GemStone-GCI/.smalltalk.ston
startClient gciClient50
```

At this point you will have Pharo5.0 image open with GemStone-GCI installed and ready to connect to the `gci_330` stone.
Once the image is open you can use the following Smalltalk expression to change the name of the default session:

```smalltalk
SCIGemStoneServerConfigSpec defaultSessionName: `<stone-name>'
```

# Alternate Installation Instructions

## Prerequisites

For the moment, you must grab a Pharo 3.0 image and vm from [here](files.pharo.org). Then, copy the `libgci*` and `libssl*` files from the Pharo VM of a tODE client image into the just downloaded Pharo 3.0 VM.   

## Installation

In the Pharo 3.0 image execute:

```Smalltalk
Metacello new
    baseline: 'GemStoneGCI';
    repository: 'github://marianopeck/GemStone-GCI:master/repository';
    load.
```

## Running Tests

First step to run the unit tests is to create a stone for running them. For that, we recommend using [GsDevKit_home](https://github.com/GsDevKit/GsDevKit_home)

```bash
createStone GemStone-GCI-Testing 3.3.0
```

Otherwise, you can use an already existing stone and change the method `#testingSessionDescription`.

Second step is to load GemStoneGCI in GemStone. For that, open tODE against the created stone and execute the same load code as for Pharo.


# GemStone-GCI

General documentation on the Gem Builder for C Interface:
- [GemBuilder for C 3.2.x manual](https://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-GemBuilderforC-3.2.pdf) [pdf]
- [GemBuilder for C 3.3.x manual](https://downloads.gemtalksystems.com/docs/GemStone64/3.3.x/GS64-GemBuilderforC-3.3.pdf) [pdf]

C function declarations for each release can be found in `$GEMSTONE/include/gci.hf`.

# Prerequisites

For the moment, you must grab a Pharo 3.0 image and vm from [here](files.pharo.org). Then, copy the `libgci*` and `libssl*` files from the Pharo VM of a tODE client image into the just downloaded Pharo 3.0 VM.   

# Installation

In the Pharo 3.0 image execute:

```Smalltalk
Metacello new
    baseline: 'GemStoneGCI';
    repository: 'github://marianopeck/GemStone-GCI:master/repository';
    load.
```

# Running Tests

First step to run the unit tests is to create a stone for running them. For that, we recommend using [GsDevKit_home](https://github.com/GsDevKit/GsDevKit_home)

```bash
createStone GemStone-GCI-Testing 3.3.0
```

Otherwise, you can use an already existing stone and change the method `#testingSessionDescription`.

Second step is to load GemStoneGCI in GemStone. For that, open tODE against the created stone and execute the same load code as for Pharo.

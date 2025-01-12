# AREACODE

Areacode is a lookup tool to display information about (mostly) U.S. and Canadian phone areacodes.

Areacode depends on a text database of areacodes. This is downloaded via the update_areacodes script from https://www.bennetyee.org/ucsd-pages/area.html. The contents of that file are not governed by the 3-clause BSD license for the areacode script here.

## Installation

To install the areacode script into /usr/local/bin and it's corresponding data file into /usr/local/share/areacodes/areacodes, run the commands:

```
./update_areacodes
sudo make install 
```

Alternately, you can run:

```
	make install dir=<alternate directory>
```

which will install both the areacode script and datafiles into <alternate directory>.

For more information on installing, run

```
make
```

## Usage

Run:

```
	areacode <info>
```

where <info> is an areacode or an area (e.g. 502 or manitoba).


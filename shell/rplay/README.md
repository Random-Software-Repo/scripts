# RPLAY

rplay plays audio files of nearly any format on any remote computer you care to use.

The source computer, the one you run the rplay command on, must have ***zsh*** and ***ffmpeg*** installed, and the target computer must have an ***ssh*** server running and the ***sox*** package installed as well as have a working default audio output device. You should have an ssh key copied to the destination (search ***ssh-copy-id***), otherwise using rplay will require *frequent* passwords as every single file played is through a separate ssh connection.

## Usage

```
	$ rplay --host <target> [options] file1 [file2 ...]
```

Other options that can be provided are:

 * -s | --shuffle   
 > Will play the file list in random order
 * -48 | --48       
 > Will resample the output to 48KHz
 * -96 | --96       
 > Will resample the output to 96KHz
 * -q | --quiet     
 > Will suppress all output


## Volume Control

rplay can be invoked through several symlinks to do *other* things. The most likely useful variants are the `rvolumeup` and `rvolumedown` commands. These will, surprisingly, adjust the volume on the remote target up or down when used. They use the same basic options as rplay, and are use like this:
```
	$ rvolumeup --host <target>
```
```
	$ rvolumedown --host <target>
```

Each invocation will adjust the volume up or down by 10 percentage points.

## Other Usage

rplay can also be invoked via the `rnoise` and `renterprise` symlinks. These both do the same thing: play a low frequency white noise reminiscent of the background drone on a certain well know fictional starship from a second series of as well known science-fiction franchise.

```
	$ rnoise --host <target>
```
```
	$ renterprise -- host <target>
```

## Installation

### Linux

```
	sudo make install
```

### FreeBSD

```
	sudo gmake install
```

Installation will install the rplay script and symlinks in `/usr/local/bin/`
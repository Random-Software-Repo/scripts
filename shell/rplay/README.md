# RPLAY

`rplay` plays audio files of nearly any format from one computer (the source), to any remote computer (the target) you care to use. This is done using `ffmpeg` to convert audio files to a `flac` stream which is, uh, streamed via `ssh` to the target computer and played on the default audio device via the `play` command (an alias for the `sox` command).

The source computer, the one you run the `rplay` command on, must have `zsh` and `ffmpeg` installed, and the target computer must have an `ssh` server running, a working default audio output device, and the `sox` package installed. You should have an ssh key copied to the target (goo\^w search ***ssh-copy-id***), otherwise using `rplay` will require *frequent* passwords as every single file played is through a separate ssh connection.

When started, `rplay` will verify that `ffmpeg` is installed locally, that an ssh connection can be made to the target, and that the target has the `sox` package installed. These tests, especially the ssh connection test, can take some time, though the timeout for the ssh test is set at 2 seconds. Because the timeout is so short, you may occasionally get an error that the connection could not be made if it takes longer than the 2 seconds `rplay` is willing to wait.

## Usage

```
	$ rplay --host <target> [options] file1 [file2 ...]
```

`<target>` will default to the environment variable $RPLAYAUDIOTARGET, so `rplay` could also be invoked as:
```
	$ export RPLAYAUDIOTARGET=somecomputer
```
```
	$ rplay file1 [file2 ...]
```

or

```
	$ RPLAYAUDIOTARGET=somecomputer rplay file1 [file1 ...]
```

Other options that can be provided are:

 * -s | --shuffle   
 > Will play the file list in random order
 * -48 | --48       
 > Will resample the output to 48KHz
 * -96 | --96       
 > Will resample the output to 96KHz
 * -q | --quiet     
 > Will suppress all console output


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

rplay can also be invoked via the `rnoise` and `renterprise` symlinks. These both do the same thing: play a low frequency white noise reminiscent of the background drone on a certain well know fictional starship from the second series of as well known science-fiction franchise.

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
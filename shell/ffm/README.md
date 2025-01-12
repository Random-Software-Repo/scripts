# FFM

FFM is a wrapper for ffmpeg that provides (hopefully) reasonable defaults and simpler options for re-encoding videos using AV1, AVC or HEVC codecs including an option for using NVidia's hardware acceleration. FFM also provides an option to simply copy video without re-encoding. FFM does not support most options available in ffmpeg. This is by design as FFM indends to provide reasonable utility for most situtations. Situations which have more complex requirements would still need to use ffmpeg directly."

## Prerequisites

Ffm requires **ffmpeg** and **zsh**. Both of these are usually avalable in the standard repositories for most unix and linux distributions. Installation will depend on your specific distribution

### Redhat / Fedora and derivatives:

```
	sudo dnf install ffmpeg zsh
```

### Debian, Ubuntu and derivatives:

```
	sudo apt-get install ffmpeg zsh
```

### FreeBSD:

```
	sudo pkg install zsh
```

Other distributions will use their own particular package manager but will probably have a similar command.

For other operating systems, you can get **ffmpeg** at https://ffmpeg.org and **zsh** is available in source from https://zsh.sourceforge.io/Arc/git.html

## Installation

To install ffm and all the alternate links (x264, etc.) into /usr/local/bin, run the command:

```
	sudo make install 
```

Alternately, you can run:

```
	make install dir=<alternate directory>
```

which will install ffm and all the alternate links into <alternate directory> instead. 


For more infomration on installation, simply run make:

```
	make
```

### Note for FreeBSD (and other BSDs)

The installation requires gmake rather than the standard bsd make. Substitute `gmake` for all references to `make` above.

## Usage

Run:

```
	ffm -h
```

for options and general usage information.

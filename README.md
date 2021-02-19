# ghget

A POSIX shell script to download files/directories from GitHub repositories.
It uses parallel and resumable transfers via `curl`, with a progress indicator.

## Install

Run `make install` as root to install `ghget` to `/usr/local/bin`.

or

Copy `ghget` to a directory in your `PATH`.

## Usage

    ghget [-o path] url

## Examples

### Get a directory

    ghget https://github.com/fivethirtyeight/data/tree/master/airline-safety

#### Output to custom directory

    ghget -o airlines https://github.com/fivethirtyeight/data/tree/master/airline-safety

### Get a single file

    ghget https://github.com/fivethirtyeight/data/blob/master/index.csv

#### Output to custom file

    ghget -o list.csv https://github.com/fivethirtyeight/data/blob/master/index.csv

#### Output to stdout

    ghget -o - https://github.com/fivethirtyeight/data/blob/master/index.csv

### Get an entire repo

    ghget https://github.com/fivethirtyeight/data

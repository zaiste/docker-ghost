# docker-ghost

[Ghost][2] in a [Docker][1] container.

## Versions

* Ghost: `0.5.8`
* NodeJS: `0.12.0`
* Ubuntu: `14.04.01`

## Usage

Clone the repository

      git clone git@github.com:zaiste/docker-ghost.git

Build the image

      cd docker-ghost
      sudo docker build -t <your name>/ghost:0.5.8 .

## Updating Ghost

Replace the version in the following line, inside `Dockerfile`

    https://ghost.org/zip/ghost-0.5.8.zip

MIT License

[1]: http://www.docker.io/
[2]: https://ghost.org/


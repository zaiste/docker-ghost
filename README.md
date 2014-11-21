# docker-ghost

[Ghost][2] in [Docker][1] container.

## Usage

Clone the repository

      git clone --recursive git@github.com:zaiste/docker-ghost.git

Build the image

      cd docker-ghost
      sudo docker build -t <your name>/ghost .

## Updating Ghost

Replace the version in the following line, inside `Dockerfile`

    https://ghost.org/zip/ghost-0.5.5.zip

MIT License

[1]: http://www.docker.io/
[2]: https://ghost.org/


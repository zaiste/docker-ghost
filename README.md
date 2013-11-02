# docker-ghost

[Ghost][2] in [Docker][1] container.

## Usage

Clone the repository

      git clone --recursive git@github.com:zaiste/docker-ghost.git

Build the image

      cd docker-ghost
      sudo docker build -t <your name>/ghost .

## Updating Ghost

[Ghost][2] is vendored using `git-submodule`. To pull the most recent version of Ghost use the following command:

    git submodule update --recursive

MIT License

[1]: http://www.docker.io/
[2]: https://ghost.org/


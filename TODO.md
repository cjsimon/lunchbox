# ToDo

- Create an init script to install the .lunch/ runtime in a project
- Add an argument for adding the path to the dockerfile when building. (use -f option on docker build)
- Add an argument for specifying the image name when building
- Create deterministic container names when building so that lunch can find existing containers without having to guess what and where they are
- Allow multiple containers of the same image, and avoid naming conflicts that prevent those duplicate container instances from running

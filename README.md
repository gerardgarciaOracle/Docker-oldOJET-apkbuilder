# Docker-oldOJET-apkbuilder
The script allows to build debug apk without installing nothing else than Docker.

# How to use?
0. Download the 3.2 OJET project.
1. Put the docker files. (Dockerfile and .dockerignore) into the project's root
2. Run: docker build -t "buildname" .
3. Run: docker run -it -v "local_folder":/usr/src/app/apk "buildname" /usr/src/app/copyAPK.sh

IMPORTANT: To build new changes of the project is required to build again the docker image.

Where:

"buildname": whatever, a name.

"local_folder": The folder where you want the apks be copied. Could no exist, is created automatically.
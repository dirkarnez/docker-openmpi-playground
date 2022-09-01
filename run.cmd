docker build --platform linux/amd64 -t openmpi-playground . 
docker run --rm -it -v "%~dp0project:/project" openmpi-playground
pause
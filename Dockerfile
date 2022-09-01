FROM pottava/openmpi:latest

COPY ./project/ /project/

WORKDIR /project

CMD mpicc -c ./main.c -o main -g && \
    chmod 777 ./main && \
    mpirun  --allow-run-as-root -n 2 main
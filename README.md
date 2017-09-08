
This is a repo for the course Explore, visualize, and predict using pandas and Jupyter by Matt Harrison.

# Start Docker

See https://hub.docker.com/r/jupyter/datascience-notebook/

Build Image

    $ docker build -t orapandas .
    
Run Image

    $ docker run -it --rm -p 8888:8888 -t orapandas


This is a repo for the courses "Getting started with Pandas" and "Mastering pandas" by Matt Harrison. Prior to June 2018, this was a two-day course entitled, "Explore, visualize, and predict using pandas and Jupyter".

# Start Docker

See https://hub.docker.com/r/jupyter/datascience-notebook/

Build Image

    $ docker build -t orapandas .
    
Run Image

    $ docker run -it --rm -p 8888:8888 -t orapandas

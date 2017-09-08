FROM jupyter/datascience-notebook

# launchbot-specific labels
LABEL name.launchbot.io="Explore, visualize and predict with pandas and jupyter"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="Explore, visualize and predict with pandas and jupyter"
LABEL 8888.port.launchbot.io="Start Tutorial"

# Set the working directory
WORKDIR /usr/workdir

# Add files

# Expose the notebook port
EXPOSE 8888

# Add files
COPY Introduction_to_Pandas.ipynb /usr/workdir/Introduction_to_Pandas.ipynb
COPY data/central-park-raw.csv /usr/workdir/data/central-park-raw.csv
COPY data/tao-all2.dat.gz /usr/workdir/data/tao-all2.dat.gz

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True



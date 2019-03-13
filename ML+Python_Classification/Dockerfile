FROM jupyter/datascience-notebook:ae885c0a6226

# launchbot-specific labels
LABEL name.launchbot.io="Hands-on Machine Learning with Python: Classification and Regression"
LABEL workdir.launchbot.io="/home/jovyan"
LABEL description.launchbot.io="Hands-on Machine Learning with Python: Classification and Regression"
LABEL 8888.port.launchbot.io="Start Tutorial"

# Set the working directory
WORKDIR /home/jovyan

# Install correct versions
COPY requirements.txt /home/jovyan/requirements.txt
RUN pip install -r requirements.txt

# Add files
#COPY *.ipynb /home/jovyan/
COPY Solutions /home/jovyan/solutions
COPY Class /home/jovyan/class
COPY data /home/jovyan/data
RUN rmdir /home/jovyan/work
RUN mkdir /home/jovyan/img && mkdir /home/jovyan/tmp

# Allow user to write to directory
USER root
RUN chown -R $NB_USER /home/jovyan \
    && chmod -R 774 /home/jovyan
USER $NB_USER

# Install graphviz
USER root
RUN apt-get update
RUN apt-get install -y graphviz
USER $NB_USER

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token='' --NotebookApp.disable_check_xsrf=True --NotebookApp.iopub_data_rate_limit=1.0e10
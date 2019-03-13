# Hands-on Machine Learning with Python: Classification and Regression

![Hands-on Machine Learning with Python: Classification and Regression course image](https://resources.oreilly.com/live-training/machine-learning-with-python-classification/uploads/9d2c8949b66c256bfc7501fa47a1a1ec/Screen_Shot_2018-07-05_at_3.19.54_PM.png)

This project contains the Jupyter Notebooks and the associated Dockerfile for Matt Harrison's **Hands-on Machine Learning with Python: Classification and Regression**. It contains both the exercises and the solutions.

This is a public repository so there is no need to create an account to download its contents. To download the source code from this page, click the 'Cloud' icon on the top right hand, above where the latest commit is detailed.

To download via git from your preferred terminal application, type: 

```git clone https://resources.oreilly.com/live-training/machine-learning-with-python-classification```

## Running Jupyter Locally via Docker

We've shared the same Dockerfile we use for our JupyterHub session in this repository, to make sure you can run all of these notebooks in your own time, on your own machine. This isn't required during class, but can be useful for learning once the session is over.

You will need to have Docker installed on your system to create images and run containers. You can find the installation steps for all platforms on the company's [website](https://docs.docker.com/install/)
.

1) Clone the repository for the class either using the UI or your terminal via `git clone https://resources.oreilly.com/live-training/machine-learning-with-python-classification`.

2) Once you have Docker installed, type the following on your terminal to create a Docker image: `docker build -t machine-learning-with-python-classification .`

3) That will take a little while to create a Docker image, but once completed, you can run your server with the following:
`docker run -p 8888:8888 machine-learning-with-python-classification`

4) Head to `localhost:8888` in your browser and you will be able to access the Jupyter Notebooks.







# Conda environment files

The "yml" files found here are the environment files used to create specialized conda environments for use with python in the University of Idaho Glacier Dynamics lab. Each yml file can be used to construct an environment of internally consistent python packages for use in your research.

The goal here is to have separate python environments that are useful for seismology purposes (e.g., `seisenv24b`), spatial analysis purposes, and image processing purposes, as well as a base environment for scientific computing.

These environments are already available to all users on the lab server, `kennicott`, and are also what Tim uses on his personal computer.  For use on your personal computer, you can download these environments as well, to create identical environments for computing while not connected to `kennicott`.  To download, `git clone` this repository, click on the green "Code" button and download the whole lot by selecting "download zip", or right-click on each yml file individually and save the file to your computer.

The spatialenv environments in particular have many components that take conda a long while (more than ~30 min) to solve.  Be patient.

By building each environment from scratch, through these environment (".yml") files, environments are easier to maintain up-to-date and conflict free than if new modules are added incrementally with occasional `conda install` commands. Read more about managing conda environments [here, at the conda website](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file), to create new environments on your local computer from these `.yml` files.  On a PC computer running Windows, management of these environments happens through the "Anaconda prompt."

Tim expects to build new environments approximately every 6 months (Jan and Jul), and name each environment by ending it with the last two digits of the year, and then "a" or "b," for the first and second environments of the year.


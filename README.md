# Conda environment files

The "yml" files found here are the environment files used to create specialized conda environments for use with python in the University of Idaho Glacier Dynamics lab. Each yml file can be used to construct an environment of internally consistent python packages for use in your research.

These environments are already available to all users on the lab server, `kennicott`, and are also what Tim uses on his personal computer.  For use on your personal computer, you can download these environments as well, to create identical environments for computing while not connected to `kennicott`.  To download, either click on the green "Code" button and download the whole lot by selecting "download zip" or right-click on each yml file individually and save the file to your computer.

By building each environment from scratch, through these environment (".yml") files, environments are easier to maintain up-to-date and conflict free than if new modules are added incrementally with occasional `conda install` commands. Read more about managing conda environments [here, at the conda website](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file), to create new environments on your local computer from these `.yml` files.  On a PC computer running Windows, management of these environments happens through the "Anaconda prompt."

### Working with Jupyter Lab
In order for Jupyter Lab to work correctly, after using conda to set up the environments as above, you'll have to run the following line from the bash/Anaconda Prompt/terminal prompt:
```bash
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib
jupyter lab build
```

Then jupyter lab can be launched by typing `jupyter lab` into bash, Anaconda Prompt, or terminal.

Within Jupyter Lab, to have interactive plotting, include the following line near the top of your python notebook file:
```python
%matplotlib widget
```
This is an example of a Jupyter "magic", and controls iPython operation.  Other magics also control plotting, or work within the operating system.

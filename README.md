# Conda environment files

The "yml" files found here are the environment files used to create specialized conda environments for use with python in the University of Idaho Glacier Dynamics lab. Each yml file can be used to construct an environment of internally consistent python packages for use in your research.

These environments are already available to all users on the lab server, `kennicott`, and are also what Tim uses on his personal computer.  For use on your personal computer, you can download these environments as well, to create identical environments for computing while not connected to `kennicott`.  To download, either click on the green "Code" button and download the whole lot by selecting "download zip" or right-click on each yml file individually and save the file to your computer.

By building each environment from scratch, through these environment (".yml") files, environments are easier to maintain up-to-date and conflict free than if new modules are added incrementally with occasional `conda install` commands. Read more about managing conda environments [here, at the conda website](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file), to create new environments on your local computer from these `.yml` files.  On a PC computer running Windows, management of these environments happens through the "Anaconda prompt."

Tim expects to build new environments approximately every 6 months (Jan and Jul), and name each environment by ending it with the last two digits of the year, and then "a" or "b," for the first and second environments of the year.

### Working with Jupyter Lab
Elements of the Jupyter Lab interface are still somewhat immature and under development.  In order for Jupyter Lab to work correctly and have interactive plots where you can zoom around, you'll have to take several actions.  Each of these actions should be run from the bash/Anaconda Prompt/terminal prompt.  Enter these after `conda activate`ing each of the applicable environments that have been built, such as base21a, spatialenv21a, etc.

1) Delete a line from a jupyter configuration file.
Within `~/anaconda3/envs/ENV_NAME/etc/jupyter/jupyter_config.json`, delete the line `"kernel_spec_manager_class": "nb_conda_kernels.CondaKernelSpecManager"`
This can be accomplished by typing, for example, 
```bash
vi ~/anaconda3/envs/base21a/etc/jupyter/jupyter_config.json
```
then press `a` to make the file editable, delete the line above, press `esc` to get out of editing mode, and finally press `wq` to save the file and quit the program vi.

2) Run the following lines:
```bash
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install jupyter-matplotlib
jupyter nbextension enable --py widgetsnbextension

python -m ipykernel install --user --name NAME_OF_ENVIRO
```
The purpose of the last line is to allow the specific environment you're setting up to appear as an optional environment within jupyter lab.  This command was identified [here](https://stackoverflow.com/questions/53004311/how-to-add-conda-environment-to-jupyter-lab) and [here](https://medium.com/@jeremy.from.earth/multiple-python-kernels-for-jupyter-lab-with-conda-c67e50de3aa3).

#### Launching and working with Jupyter lab
After Jupyter Lab is all set up, Jupyter Lab can be launched by typing `jupyter lab` into bash, Anaconda Prompt, or terminal.

Within Jupyter Lab, to have interactive plotting, include the following line near the top of your python notebook file:
```python
%matplotlib widget
```
This is an example of a Jupyter "magic", and controls iPython operation.  Other magics also control plotting, or work within the operating system.

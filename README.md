# research-project-template

A python project template for research work. 

## included packages

```bash
    "accelerate>=1.10.1",
    "altair>=5.5.0",
    "einops>=0.8.1",
    "ipython>=9.5.0",
    "jupyter>=1.1.1",
    "jupyterlab>=4.4.7",
    "lightning>=2.5.5",
    "matplotlib>=3.10.6",
    "pandas>=2.3.2",
    "scikit-learn>=1.7.2",
    "seaborn>=0.13.2",
    "tensorboard>=2.20.0",
    "torch>=2.8.0",
    "torchvision>=0.23.0",
    "wandb>=0.21.4",
```



## pre-requisities

> [!IMPORTANT]
> The minimum required python version is `3.12.11` . You can install different python versions
> via `pyenv`. You can find more about it [here](https://github.com/pyenv/pyenv?tab=readme-ov-file#installation).


Install `uv`.

```bash
# linux or macOS
curl -LsSf https://astral.sh/uv/install.sh | sh

# windows
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```


## bootstrapping

Create a `virtualenv` using `uv` and install the dependencies. Then activate it.

```bash
uv sync

# linux or macOS
source .venv/bin/activate

# windows
.venv\Scripts\activate
```


> [!TIP]
> The provided `main.py` file is a placeholder. You can modify or remove it as needed.



## devcontainer

In case you prefer a container based solution (via docker, podman, containerd etc.) for your project to avoid the hassle of linking local package dependencies (e.g. glibc, cuda, etc.), you can use the provided devcontainer with Visual Studio Code or Pycharm.


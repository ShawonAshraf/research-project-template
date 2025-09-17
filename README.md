# research-project-template

A python project template for research work. 


## project structure

> [!TIP]
> The provided `src/main.py` file is a placeholder. You can modify or remove it as needed.


```bash
research-project-template/
├── devcontainer.Dockerfile
├── pyproject.toml
├── README.md
├── uv.lock
├── artefacts
├── notebooks/
│   └── placeholder.ipynb
└── src/
    ├── __init__.py
    └── main.py
```

> [!NOTE]
> Tensorboard logs are ignored in the `.gitignore` file as `tb_logs`. 
> If you use a different name for the logging folder, make sure to update it.


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


Install `uv`. Also get a `wandb` api key if you're planning to use [Weights & Biases](https://wandb.ai/site). 

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

If you're going to use `wandb`, copy the contents of the `.env.example` file to a new file named `.env` and then edit the api key value with your api key. In your code, you can use `python-dotenv` to load the api key.

```python
import os
from dotenv import load_dotenv

# assuming your code is inside src/
load_dotenv(dotenv_path="../.env", override=True)

WANDB_API_KEY = os.getenv("WANDB_API_KEY")
```



## devcontainer

In case you prefer a container based solution (via `docker`, `podman`, `containerd` etc.) for your project to avoid the hassle of linking local package dependencies (e.g. `glibc`, `cuda`, etc.), you can use the provided devcontainer with Visual Studio Code or Pycharm.


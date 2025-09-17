FROM python:3.12.11-bookworm

WORKDIR /workspaces

# env
RUN pip install uv
COPY pyproject.toml uv.lock ./
RUN uv sync

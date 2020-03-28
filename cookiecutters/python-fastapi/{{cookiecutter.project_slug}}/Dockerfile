FROM python:3.8-slim as build

RUN pip install poetry \
    && mkdir -p /build/{{cookiecutter.project_package}}
COPY pyproject.toml /build/
COPY {{cookiecutter.project_package}} /build/{{cookiecutter.project_package}}/
RUN cd /build && poetry build

FROM python:3.8-slim

RUN apt update \
    && apt install -y --no-install-recommends \
        libmagic-dev \
    && apt -y clean \
    && rm -rf /var/lib/apt/lists/*
COPY --from=build /build/dist/{{cookiecutter.project_package}}-*-py3-none-any.whl /
RUN pip install /{{cookiecutter.project_package}}-*-py3-none-any.whl

ENTRYPOINT ["python"]
CMD ["-m", "{{cookiecutter.project_package}}"]

# Justfile

# aliases
alias fmt:=format

# list justfile recipes
default:
    just --list

# open
open:
    @open https://dkdc.io

# python stuff
setup:
    @uv venv --python 3.12 --allow-existing
    just install

install:
    @. .venv/bin/activate && uv pip install -e . --upgrade

format:
    @ruff format .

# preview
preview:
    quarto preview

# build
build:
    quarto render

# clean
clean:
    rm -r _freeze || true
    rm -r _site || true

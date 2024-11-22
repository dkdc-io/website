# Justfile

# list justfile recipes
default:
    just --list

# open
open:
    @open https://dkdc.io

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

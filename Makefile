# Sample Makefile for Python project

help:
	@echo "Makefile commands:"
	@echo "  install   Install dependencies"
	@echo "  test      Run tests with pytest"
	@echo "  lint      Lint code with flake8"
	@echo "  clean     Remove Python cache files"

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test format

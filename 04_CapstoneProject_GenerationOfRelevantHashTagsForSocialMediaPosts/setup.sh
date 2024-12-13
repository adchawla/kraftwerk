#!/bin/bash
pyenv local
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -U -r dev-requirements.txt
python -m nltk.downloader 'all'

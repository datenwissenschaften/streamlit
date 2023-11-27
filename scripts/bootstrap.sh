#!/bin/bash

cd /opt || exit

pip install -r /notebooks/requirements.txt
streamlit run /notebooks/Home.py
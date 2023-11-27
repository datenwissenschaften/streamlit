#!/bin/bash

pip install -r /notebooks/requirements.txt
streamlit run "/notebooks/Home.py" -- --env "$STAGE"
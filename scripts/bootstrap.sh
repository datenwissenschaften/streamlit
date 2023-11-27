#!/bin/bash

pip install -r /notebooks/requirements.txt
streamlit run "/notebooks/$HOME" -- --env "$STAGE"
#!/bin/bash

pip install -r /notebooks/requirements.txt
streamlit run "/notebooks/$STREAMLIT_NOTEBOOK" -- --env "$STAGE"
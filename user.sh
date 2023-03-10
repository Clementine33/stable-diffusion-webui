#!/bin/bash
export COMMANDLINE_ARGS="--share --gradio-debug --gradio-queue --gradio-auth 33:123 --no-half-vae --opt-split-attention --xformers --enable-insecure-extension-access --no-progressbar-hiding"

# python3 executable
python_cmd="/content/automatic/bin/python"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
export LAUNCH_SCRIPT="launch.py"

# Requirements file to use for stable-diffusion-webui
export REQS_FILE="requirements.txt"

###########################################
exec "${python_cmd}" "${LAUNCH_SCRIPT}" "$@"
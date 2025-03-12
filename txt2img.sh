#!/bin/bash
#SBATCH --job-name=stable-diffusion
#SBATCH --partition=hperf
#SBATCH --output=job%A_%N.out
#SBATCH --chdir=/shared/home/u598745/stable_diffusion

#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8

python txt2img.py --prompt "a photograph of an astronaut riding a horse" --plms 
mkdir -p /OUTPUTS/.local/tmp && \
mkdir -p /OUTPUTS/.local/home && \
cd /OUTPUTS/.local/home && \
python3.3 /extra/validate_docker_inputs/validate_docker_inputs.py && \
xvfb-run -a --server-args="-screen 0 1920x1200x24 -ac +extension GLX" /extra/FMRIQA_v4_0_0 && \
rm -rf /OUTPUTS/.local

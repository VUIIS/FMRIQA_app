# FMRIQA_app
This includes everything required (except for the "spm12r6225_with_vbm8r435_compiled" directory and "FMRIQA_v4_0_0", which are too large to commit) to build a docker and corresponding singularity container for the FMRIQA pipeline. 

[Docker Hub](https://hub.docker.com/r/vuiiscci/fmriqa/tags/)

[Singularity Hub](https://www.singularity-hub.org/collections/920)

# Build Instructions:
Just clone and run `build.sh`:
```
git clone https://github.com/vuiiscci/FMRIQA_app.git
cd FMRIQA_app/
./build.sh
```
NOTE that you must have "spm12r6225_with_vbm8r435_compiled" directory and "FMRIQA_v4_0_0" compiled MATLAB executable.

# Run Instructions:
For docker:
```
sudo docker run --rm \
-v $(pwd)/INPUTS/:/INPUTS/ \
-v $(pwd)/OUTPUTS:/OUTPUTS/ \
--user $(id -u):$(id -g) \
vuiiscci/fmriqa
```
For singularity:
```
singularity run -e \
-B INPUTS/:/INPUTS \
-B OUTPUTS/:/OUTPUTS \
shub://vuiiscci/FMRIQA_app
```

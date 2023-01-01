FROM mcr.microsoft.com/azureml/openmpi3.1.2-ubuntu18.04

RUN pip install git+https://github.com/tawnkramer/gym-donkeycar

RUN pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/cpu

RUN pip install git+https://github.com/prakhyat123/rl-baselines3-zoo.git

RUN pip install seaborn

RUN pip install git+https://github.com/prakhyat123/vicreg-trrain-donkey.git

CMD ["/bin/bash"]
FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel

RUN apt-get update && apt-get install -y libgl1-mesa-glx libpci-dev curl nano psmisc zip git && apt-get --fix-broken install -y

RUN conda install -y scikit-learn pandas flake8 yapf isort yacs future libgcc

RUN pip install --upgrade pip && python -m pip install --upgrade setuptools && \
    pip install opencv-python tb-nightly matplotlib logger_tt tabulate tqdm wheel mccabe scipy
    
RUN pip install torch==2.5.1 torchvision==0.20.1 numpy==1.26.4 pillow  plyfile huggingface_hub safetensors


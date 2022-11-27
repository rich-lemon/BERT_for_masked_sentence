FROM python:3.10-slim

RUN apt update
RUN pip install jupyterlab

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--LabApp.token=''"]

RUN apt install cmake -y

RUN pip install torch
RUN pip install transformers
RUN pip install pyknp

RUN pip install sentencepiece
RUN pip install protobuf==3.20

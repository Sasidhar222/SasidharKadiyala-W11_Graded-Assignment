FROM python:3.10-slim-buster

WORKDIR /

COPY . /

RUN pip3 install --no-cache-dir -r requirements.txt

RUN python code_model_training/train.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "-p", "5000"]
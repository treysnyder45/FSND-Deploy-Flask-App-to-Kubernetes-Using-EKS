  
#source image
FROM python:stretch

# set work directory
COPY . /app
WORKDIR /app

# dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]e
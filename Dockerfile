FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y python3.6 python3-pip

# COPY . /app
# WORKDIR /app

# RUN pip3 install -r requirements.txt

# RUN python3.6 manage.py makemigrations
# RUN python3.6 manage.py migrate

# CMD ["python3.6", "manage.py", "runserver", "0.0.0.0:8000"]



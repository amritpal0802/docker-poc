FROM python:3
ENV PYTHONDONTWRITEBYTECODE=1
# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED=1
#directory to store app source code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt
# COPY . .
# EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]



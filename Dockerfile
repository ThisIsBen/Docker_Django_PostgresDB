From python:3.11.9
WORKDIR /container_app
ADD requirements.txt /container_app/
RUN pip install -r requirements.txt
CMD ["python","manage.py","runserver","0.0.0.0:8080"]
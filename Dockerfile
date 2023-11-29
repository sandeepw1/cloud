FROM python:2
RUN apt update -y && apt upgrade -y
RUN pip install mysql-connector-python
RUN mkdir /new
COPY test.py /new/
CMD ["python", "/new/test.py"]

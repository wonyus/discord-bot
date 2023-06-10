FROM python:3.9.12

# Install Java JDK
RUN apt-get update && apt-get install -y default-jdk

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV TOKEN OTAwNzk1MTQ3ODYyODMxMTU1.YXGg2w.dvfM4oJc5ygt-cE388Of8X88OZ8
CMD ["python3", "./launcher.py"]

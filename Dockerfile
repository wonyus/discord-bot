FROM python:3.9-alpine

# Install Java JDK
RUN apt-get update && apt-get install -y default-jdk

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
ARG TOKEN
ENV TOKEN=$TOKEN
CMD ["python3", "./launcher.py"]

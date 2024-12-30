FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl ca-certificates python3 python3-pip
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install tg
WORKDIR /app
COPY ida.py /app/
RUN chmod +x /app/ida.py
CMD ["python3", "/app/ida.py"]
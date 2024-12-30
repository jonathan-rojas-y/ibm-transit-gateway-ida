FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl ca-certificates python3 python3-pip
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install tg
WORKDIR /app
COPY ibmcloud_script.py /app/
RUN chmod +x /app/ibmcloud_script.py
CMD ["python3", "/app/ibmcloud_script.py"]
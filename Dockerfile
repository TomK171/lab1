FROM python:3.8-slim
COPY . .
RUN pip install -r requirements.txt
ENV YOUR_NAME=tom
EXPOSE 5500
ENTRYPOINT ["python" , "app.py"]
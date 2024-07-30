# Dockerfile

FROM python:3.9-slim

WORKDIR /app

COPY . ./

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.port=8080", "--server.address=0.0.0.0"]
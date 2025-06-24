FROM python:3.10-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir Flask scikit-learn pandas numpy matplotlib gunicorn
EXPOSE 5000
CMD ["python", "app.py"]
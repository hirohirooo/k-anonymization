# Dockerfile
FROM gboeing/osmnx:v1.6.0

EXPOSE 8888

WORKDIR /app
ADD . /app

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]


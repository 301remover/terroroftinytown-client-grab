FROM python:3.7.4-alpine
WORKDIR /app
COPY ./terroroftinytown/terroroftinytown /app/terroroftinytown
COPY ./pipeline.py ./scraper.py /app/
RUN pip3 install seesaw requests
EXPOSE 8001
ENTRYPOINT ["run-pipeline3", "pipeline.py", "--context-value", "no_submodule=1", "--address", "0.0.0.0", "--port", "8001"]

FROM python
WORKDIR /app

COPY requirements.txt ./

RUN pipenv lock --requirements
EXPOSE 5000

ENTRYPOINT [ "python","app.py" ]
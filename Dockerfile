FROM python:3.11-slim-buster

# environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# work directory
WORKDIR /app

# install dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# copy project files
COPY . /app/

# copy and set permissions for entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# set entrypoint
ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu:16.04

# -- Install Apt packages
RUN apt-get update && apt-get install -y \
    apt-utils \
    python-pip \
    firefox \
    xvfb

# -- ** --

# -- Install application
RUN mkdir /opt/app
ENV PATH="/opt/app/bin:${PATH}"
COPY . /opt/app
WORKDIR /opt/app

  # -- Install Python packages with pipenv
RUN pip install --upgrade pip pipenv \
    && pipenv install --deploy --system --dev

# -- Run application
CMD ["python", "app.py"]
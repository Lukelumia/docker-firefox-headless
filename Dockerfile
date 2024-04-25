# https://ersinaksar.medium.com/automate-your-web-testing-with-firefox-docker-python-and-selenium-a-comprehensive-guide-c1e8e36c2ab1
FROM --platform=linux/amd64 python:3.11-slim-bullseye
RUN apt-get update && apt-get install -y firefox-esr xvfb xauth
RUN pip install selenium

# RUN echo 'Xvfb :99 -screen 0 1024x768x24 -nolisten tcp &' > /etc/profile.d/run_xvfb.sh

RUN Xvfb :99 &
ENV DISPLAY=:99

WORKDIR /code

COPY retrieve_url.py /code/retrieve_url.py


CMD ["bash", "-c", "Xvfb :99 -screen 0 1024x768x24 -nolisten tcp & python /code/retrieve_url.py"]

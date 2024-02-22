# https://ersinaksar.medium.com/automate-your-web-testing-with-firefox-docker-python-and-selenium-a-comprehensive-guide-c1e8e36c2ab1
FROM python:3.9-slim-buster
RUN apt-get update && apt-get install -y firefox-esr xvfb xauth
RUN pip install selenium
RUN echo 'DISPLAY=:99\nDISPLAY_PORT=99' >> /etc/environment
RUN echo 'Xvfb :99 -screen 0 1024x768x24 -nolisten tcp &' > /etc/profile.d/run_xvfb.sh


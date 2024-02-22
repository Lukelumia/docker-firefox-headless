# https://ersinaksar.medium.com/automate-your-web-testing-with-firefox-docker-python-and-selenium-a-comprehensive-guide-c1e8e36c2ab1
FROM python:3.9-slim-buster

# Install Firefox and other dependencies
RUN apt-get update && apt-get install -y firefox-esr xvfb

# Install Python packages
RUN pip install selenium

# Install xvfb and xauth packages
RUN apt-get install -y xvfb xauth

# Copy Python script
COPY main.py .

# Run script with xvfb
CMD ["xvfb-run", "--server-args='-screen 0 1024x768x24'", "--auto-servernum", "python", "main.py"]

# docker run --rm -e DISPLAY=:99 my-firefox


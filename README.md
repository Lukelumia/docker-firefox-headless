# Firefox headless browser example

This is a working example of using Firefox webdriver (xvfb) with Python Selenium to automate browser interaction.

The code is adapted from this [blog post](https://ersinaksar.medium.com/automate-your-web-testing-with-firefox-docker-python-and-selenium-a-comprehensive-guide-c1e8e36c2ab1) by [Ersin Akşar](https://ersinaksar.medium.com).

Build the image:
`docker build . -t my-firefox`

Start an interactive Bash session:
`docker run -v $PWD:/code -it my-firefox bash -c "su - root"`

Note: The `su - root` is to load a login shell, which reads environment variables from `/etc/environment` and runs all scripts in `/etc/profile.d/`.

Run the example Selenium script:

`python /code/retrieve_url.py`

The example script navigates to `www.google.com` and prints the returned HTML.


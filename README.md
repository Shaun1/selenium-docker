# Docker based web driver using Selenium/Firefox

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=Shaun1&repoName=selenium-docker&branch=master&pipelineName=selenium-docker&accountName=shaun1&type=cf-2)]( https://g.codefresh.io/repositories/Shaun1/selenium-docker/builds?filter=trigger:build;branch:master;service:5a57c31e0be7290001ff7d24~selenium-docker)

Docs for [Selenium WebDriver for Python](https://selenium-python.readthedocs.io/)

Selenium uses the [geckodriver](https://github.com/mozilla/geckodriver/releases)
to communicate with Firefox.

Build the Docker image:

  `make`

Run the application:

  `make run`

Test:

  `make test`

Clean up test artifacts:

  `make clean`

Open bash shell in Docker image:

  `make interactive`

## Managing Python dependencies

[pipenv](https://github.com/kennethreitz/pipenv) is used to handle Python package
dependencies. pipenv creates a virtualenv for your application and locks down
the package versions so theoretically you'd be able to run the same app on another
platform.

Run from the Docker image itself (using `make interactive`) to add packages to
the _Pipfile_. _Pipfile.lock_ will be updated along with it.

To add pip packages:

`pipenv install {my_package}`

To add pip packages for development only:

`pipenv install {my_dev_package} --dev`

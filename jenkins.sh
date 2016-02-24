#!/bin/bash

cp $JENKINS_HOME/agavepy/test-credentials-public.json /var/jenkins_home/jobs/agavepy-tests/workspace/agavepy/tests/test_credentials.json
mkdir -p /var/jenkins_home/jobs/agavepy-tests/workspace/virtualenvs/

# create and activate the virtualenv
cd /var/jenkins_home/jobs/agavepy-tests/workspace/virtualenvs/; virtualenv agavepy
source /var/jenkins_home/jobs/agavepy-tests/workspace/virtualenvs/agavepy/bin/activate

# install the requirements:
pip install -r /var/jenkins_home/jobs/agavepy-tests/workspace/requirements.txt

# run the tests
cd /var/jenkins_home/jobs/agavepy-tests/workspace/agavepy/tests; py.test
FROM jfrog-docker-reg2.bintray.io/jfrog/artifactory-pro:6.3.0
USER root

ENTRYPOINT ["/bin/bash", "/entrypoint-artifactory.sh"]

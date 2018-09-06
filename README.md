
# artifactory
# Docker file for Artifactory
# 1. Create a new directory and save the following text as a Dockerfile:
    mkdir artifactory-pro-test
    cd artifactory-pro-test
    vi Dockerfile

# 2. Paste the following contents into the Dockerfile:
    FROM jfrog-docker-reg2.bintray.io/jfrog/artifactory-pro:6.3.0
    USER root
 
    ENTRYPOINT ["/bin/bash", "/entrypoint-artifactory.sh"]

# 3. Build the docker image:
    docker build .
 
Sending build context to Docker daemon  2.048kB
Step 1/3 : FROM jfrog-docker-reg2.bintray.io/jfrog/artifactory-pro:6.3.0
[...]
Successfully built 33cb1446532f

# 4. Run the built image:

    docker run -d -p 8081:8081 --name arttest 33cb1446532f

# command untuk build aplikasi di docker
docker build -t dwihami/karsajobs-ui:latest .

# command untuk login docker hub di lokal vm kita
echo $PASSWORD_DOCKER_HUB | docker login -u dwihami --password-stdin

# command untuk push image ke docker hub
docker push dwihami/karsajobs-ui:latest
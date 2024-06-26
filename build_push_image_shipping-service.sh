# command untuk build aplikasi di docker
docker build -t ghcr.io/ilhamdwik/shipping-service:latest .

# command untuk login docker hub di lokal vm kita
echo PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u ilhamdwik --password-stdin

# command untuk push image ke docker hub
docker push ghcr.io/ilhamdwik/shipping-service:latest
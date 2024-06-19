# menjalankan build aplikasi
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image item-app:v1 menjadi dwihami/item-app:v1 sesuai format nama dari docker hub
docker tag item-app:v1 dwihami/item-app:v1

# command docker login untuk melindungi password kita, dengan menjalankan export PASSWORD_DOCKER_HUB=<password_Anda>, lalu menjalankan perintah dibawah ini.
echo $PASSWORD_DOCKER_HUB | docker login -u dwihami --password-stdin

# command untu push ke reposistory docker hub milik pribadi yaitu dwihami
docker push dwihami/item-app:v1

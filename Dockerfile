# base image menggunakan node:14-alpine, agar size images lebih kecil
FROM node:14-alpine

# menentukan working directory di container
WORKDIR /app

# menyalin seluruh source code ke dalam working directory di container
COPY . .

# Menginstal dependencies
RUN npm install

# meng-expose port 3000 di dalam container
EXPOSE 3001

# menjalankan perintah node
CMD ["node", "index.js"]
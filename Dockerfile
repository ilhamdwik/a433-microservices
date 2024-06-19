# base image menggunakan node:14
FROM node:14

# menentukan working directory di container
WORKDIR /app

# menyalin seluruh source code ke dalam working directory di container
COPY . .

# menentukan bahwa saat ini kita menjalankan dalam mode production dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# meng-expose port 8080 di dalam container
EXPOSE 8080

# menjalankan perintah npm start di dalam container
CMD ["npm", "start"]
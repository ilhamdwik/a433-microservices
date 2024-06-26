# base image menggunakan node:14
FROM node:14

# menentukan working directory di container
WORKDIR /app

# menyalin seluruh source code ke dalam working directory di container
COPY . .

# menentukan bahwa saat ini kita menjalankan dalam mode production
ENV NODE_ENV=production

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# meng-expose port 8080 di dalam container
EXPOSE 3000

# menjalankan perintah npm start di dalam container
CMD ["npm", "start"]
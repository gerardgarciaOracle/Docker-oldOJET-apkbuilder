FROM gerardgm/oldojet-android

WORKDIR /usr/src/app
# COPY phantomjs-2.1.1-linux-x86_64.tar.bz2 /tmp/phantomjs/
COPY package*.json ./
RUN  npm config set registry https://registry.npmjs.com/
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . .

# apk build at /usr/src/app/hybrid/platforms/android/app/build/outputs/apk/debug/app-debug.apk
# Commands to run the apk builder:
# docker build -t gerardgm/ojet-android .
# docker run -it -v C:\Users\gerargar\ojetapps\myHybridApp\apk:/usr/src/app/apk gerardgm/app-build /usr/src/app/copyAPK.sh
RUN [ "grunt", "build", "--platform=android"]

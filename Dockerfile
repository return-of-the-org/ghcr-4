FROM node:14-buster@sha256:7d35fcbf7692555da206f3e9302b8d6831164194e16fca9d138513f9da978a70

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]

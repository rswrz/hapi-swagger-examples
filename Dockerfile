FROM node

WORKDIR /app

RUN git clone https://github.com/glennjones/hapi-swagger.git . \
    && npm install \
    && find examples/ -type f -exec \
        sed -i "s/host: 'localhost'/host: '0.0.0.0'/g" {} +

EXPOSE 3000

CMD node examples/simple.js
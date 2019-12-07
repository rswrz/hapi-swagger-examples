# hapi-swagger examples in a container

Build a node container with hapi-swagger and run examples

## clone and build
```
git clone https://github.com/rswrz/hapi-swagger-examples.git
cd hapi-swagger-examples
docker build -t hapi-swagger-examples:latest .
```

## run default example simple.js
```
docker run \
    --rm --publish 3000:3000 \
    hapi-swagger-examples:latest
```

## run other examples
```
docker run \
    --rm --publish 3000:3000 \
    hapi-swagger-examples:latest \
    node examples/debug.js
```

### Access Swagger-UI
https://localhost:3000/documentation
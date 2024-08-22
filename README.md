# zz-jpeg-recompress-builder
```
# build docker image
docker build -t zz-jpeg-recompress-builder .

# extract binary from docker container
container_id=$(docker create zz-jpeg-recompress-builder)
docker cp "$container_id:/build/jpeg-archive/jpeg-recompress" jpeg-recompress
docker rm "$container_id"

# run binary
./jpeg-recompress --version
```

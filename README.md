# Docker-Govendor

Golang-alpine based image with [govendor](https://github.com/kardianos/govendor) installed.

## Example

```
# initialise the vendor folder
docker run --rm -it -v $PWD:/go/src/my-project -w /go/src/my-project trifs/govendor init

# add missing dependencies
docker run --rm -it -v $PWD:/go/src/my-project -w /go/src/my-project trifs/govendor fetch +missing

# remove unused dependencies
docker run --rm -it -v $PWD:/go/src/my-project -w /go/src/my-project trifs/govendor remove +unused
```

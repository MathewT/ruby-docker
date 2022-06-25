# ruby-docker

## Build

```bash
docker build -t smathewthomas/ruby:3.1.2-alpine3.16  .
```

## Run

```bash
docker run --rm -ti -p 3000:3000  -v "$(pwd)":/app smathewthomas/ruby:3.1.2-alpine3.16 /bin/bash
```
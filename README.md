# UnZip for AWS Lambda as layer

[UnZip](http://infozip.sourceforge.net/UnZip.html) archive command for AWS Lambda layer. This is a for of the zip-lambda-layer repo.

## Getting Started

You can get `unzip-lambda-layer.zip` file the following build command via Docker.

```
$ docker build -t unzip-lambda-layer .
$ docker run -v "${PWD}/dist":/tmp/unzip-lambda-layer unzip-lambda-layer:latest
```

Click on Layers and click "Create Layer", upload `unzip-lambda-layer.zip`, choose the runtime you need, and other inputs like the following image.

![Create Layer](CreateUnzipLayer.png)

Click "Add a layer" your lambda function Designer, and add it.

![Add Layer To Function](AddUnzipLayer.png)

# website-check
Dockerfile to create an image that checks if a website is up (returns 200) or not 

### Build
`docker build -t website-check .`

### Run
`docker run --rm website-check <URL>`

*example: success*
```
$ docker run --rm website-check https://www.ibm.com
response code: 200
```

*example: failure*
```
$ docker run --rm website-check https://www.ibm.com/foo
Response code: 404
curl: (22) The requested URL returned error: 404 Not Found
```


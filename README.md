# Grape + rodauth = <3
This repository is example how you can integrate [rodauth](http://rodauth.jeremyevans.net) to [grape](https://github.com/ruby-grape/grape) app

## how to use it
1. create table for rodauth
2. start the server
3. send this requests

```
curl -v -H "Accept: application/json" -H "Content-Type: application/json" -d '{"login":"test@site.com", "password":"password" }' -X POST http://localhost:9292/login
```

After that you need to get `Authorization` header value and send next request with this value:
```
curl -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NvdW50X2lkIjozfQ.QrWSnSlknpfczTUK6IN_Nzc_mYhaSaKi95sts_c6P3U" -X GET http://localhost:9292/api/hello.json
```

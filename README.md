# Simple rodauth integration for grape app

```
curl -v -H "Accept: application/json" -H "Content-Type: application/json" -d '{"login":"test@site.com", "password":"password" }' -X POST http://localhost:9292/login
```

Use `Authorization` header:
```
curl -H "Accept: application/json" -H "Content-Type: application/json" -H "Authorization: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhY2NvdW50X2lkIjozfQ.QrWSnSlknpfczTUK6IN_Nzc_mYhaSaKi95sts_c6P3U" -X GET http://localhost:9292/api/hello.json
```

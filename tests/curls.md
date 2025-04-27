1. Testing the Welcome Agent Endpoint
```
curl -X POST http://localhost:8000/api/welcome \
  -H "Content-Type: application/json" \
  -d '{"message": "I am an employer looking for a skilled developer"}'
```

2. Testing the Project Agent Endpoint
```
curl -X POST http://localhost:8000/api/project \
  -H "Content-Type: application/json" \
  -d '{"message": "Tell me more about the e-commerce project"}'
```

3. Testing the Career Agent Endpoint
```
curl -X POST http://localhost:8000/api/career \
  -H "Content-Type: application/json" \
  -d '{"message": "What skills do you have?"}'
```

4. Testing the Client Agent Endpoint
```
curl -X POST http://localhost:8000/api/client \
  -H "Content-Type: application/json" \
  -d '{"message": "What services do you offer?"}'
```

5. Testing the Research Agent Endpoint
```
curl -X POST http://localhost:8000/api/research \
  -H "Content-Type: application/json" \
  -d '{"message": "What are the current trends in web development?"}'
```




# Makefile and cURL Commands Documentation

## Makefile Commands

| Command        | Description                                |
|----------------|--------------------------------------------|
| `make build-backend` | Build the backend Docker image manually. |
| `make build-frontend` | Build the frontend Docker image manually. |
| `make up`       | Build and start all containers using `docker-compose up --build`. |
| `make down`     | Stop and remove all running containers. |
| `make logs-backend` | View logs from the backend container. |
| `make logs-frontend` | View logs from the frontend container. |

---

## API Testing using cURL

### 1. Testing the Welcome Agent Endpoint
```bash
curl -X POST http://localhost:8000/api/welcome \
  -H "Content-Type: application/json" \
  -d '{"message": "I am an employer looking for a skilled developer"}'
```

### 2. Testing the Project Agent Endpoint
```bash
curl -X POST http://localhost:8000/api/project \
  -H "Content-Type: application/json" \
  -d '{"message": "Tell me more about the e-commerce project"}'
```

### 3. Testing the Career Agent Endpoint
```bash
curl -X POST http://localhost:8000/api/career \
  -H "Content-Type: application/json" \
  -d '{"message": "What skills do you have?"}'
```

### 4. Testing the Client Agent Endpoint
```bash
curl -X POST http://localhost:8000/api/client \
  -H "Content-Type: application/json" \
  -d '{"message": "What services do you offer?"}'
```

### 5. Testing the Research Agent Endpoint
```bash
curl -X POST http://localhost:8000/api/research \
  -H "Content-Type: application/json" \
  -d '{"message": "What are the current trends in web development?"}'
```

---

## Notes
- Ensure backend is running (`make up`) before using cURL commands.
- Default backend port: `8000`
- Default frontend (Vite) port: `5173`

---

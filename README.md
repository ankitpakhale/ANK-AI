# ANK-AI: Agent-driven Navigation & Knowledge – Artificial Intelligence

A fullstack project to build a **team of AI agents** that can answer user queries about:
- Career growth
- Projects and technology
- Business services
- Research and industry trends  
using a **Flask backend** with **Groq LLMs** and a **React.js frontend** with chat interfaces.

---

## Tech Stack

**Backend**:
- Python
- Flask
- Agno (Agent Management)
- Groq (LLM Inference API)
- Python-dotenv
- CORS Middleware

**Frontend**:
- React.js (Vite)
- Tailwind CSS
- Axios
- React Router

---

## Project Structure

```
├── agents
│   ├── base_agent.py
│   ├── career_agent.py
│   ├── client_agent.py
│   ├── __init__.py
│   ├── project_agent.py
│   ├── research_agent.py
│   └── welcome_agent.py
├── CODEOWNERS
├── frontend
│   ├── eslint.config.js
│   ├── index.html
│   ├── package.json
│   ├── package-lock.json
│   ├── postcss.config.js
│   ├── public
│   │   └── vite.svg
│   ├── README.md
│   ├── src
│   │   ├── App.css
│   │   ├── App.jsx
│   │   ├── assets
│   │   │   └── react.svg
│   │   ├── components
│   │   │   ├── Chat.jsx
│   │   │   ├── Footer.jsx
│   │   │   ├── Layout.jsx
│   │   │   └── Navbar.jsx
│   │   ├── index.css
│   │   ├── main.jsx
│   │   ├── pages
│   │   │   ├── Career.jsx
│   │   │   ├── Contact.jsx
│   │   │   ├── Home.jsx
│   │   │   ├── Projects.jsx
│   │   │   ├── Research.jsx
│   │   │   └── Services.jsx
│   │   └── style.css
│   ├── tailwind.config.js
│   └── vite.config.js
├── main.py
├── README.md
├── requirements.txt
├── .env_example
└── tests
    └── curls.md
```

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/ankitpakhale/ANK-AI.git
cd ANK-AI
```

---

### 2. Backend Setup (Flask + Groq + Agno)

```bash
cd backend
python3 -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt
```

Create a `.env` file inside `backend/`:

```env
GROQ_API_KEY=your-groq-api-key
```

Run the backend server:

```bash
python main.py
```

Backend will run on:  
`http://localhost:5001`

---

### 3. Frontend Setup (React + Tailwind)

```bash
cd frontend
npm install
npm run dev
```

Frontend will run on:  
`http://localhost:5173`

---

## API Endpoints

| Endpoint         | Agent Type          | Description                           |
|------------------|----------------------|---------------------------------------|
| `/api/welcome`   | WelcomeAgent         | Greet user and suggest next steps     |
| `/api/project`   | ProjectAgent         | Handle project and technology queries|
| `/api/career`    | CareerAgent          | Help users with skills, job fit, etc. |
| `/api/client`    | ClientAgent          | Business services and client queries |
| `/api/research`  | ResearchAgent        | Industry trends, comparison research |

---

## Usage Examples (cURL)

Welcome:

```bash
curl -X POST http://localhost:5001/api/welcome -H "Content-Type: application/json" -d '{"prompt": "Hi"}'
```

Project Inquiry:

```bash
curl -X POST http://localhost:5001/api/project -H "Content-Type: application/json" -d '{"prompt": "Tell me about your latest projects"}'
```

Career Inquiry:

```bash
curl -X POST http://localhost:5001/api/career -H "Content-Type: application/json" -d '{"prompt": "What skills should I learn for a full-stack role?"}'
```

Client Services:

```bash
curl -X POST http://localhost:5001/api/client -H "Content-Type: application/json" -d '{"prompt": "How do you work with clients?"}'
```

Research:

```bash
curl -X POST http://localhost:5001/api/research -H "Content-Type: application/json" -d '{"prompt": "Compare React and Vue"}'
```

---

## Frontend Features

- Dynamic Chat interface with auto-scroll and typing animation
- Separate pages for:
  - Home
  - Projects
  - Career
  - Services
  - Research
  - Contact
- Mobile Responsive Layout
- Axios integration with Flask APIs
- Styled with Tailwind CSS for a modern UI

---

## Deployment

- Build production frontend:

```bash
cd frontend
npm run build
```

- Deploy `frontend/dist` and `backend` using services like:
  - Render
  - Vercel (frontend) + Railway (backend)
  - AWS EC2
  - DigitalOcean

(You may need to adjust CORS and API URLs for production.)

---

## Environment Variables

For backend (`backend/.env`):

```
GROQ_API_KEY=<your_groq_key>
```

---

## Future Improvements

- Add Authentication for personalized agent responses
- Add more agents dynamically
- Use Websockets for real-time chat experience
- Improve mobile optimization

---

✅ **Project complete and production-ready!**

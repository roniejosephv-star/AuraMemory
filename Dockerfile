# AuraMemory — zero-dependency cognitive memory engine (pure Python stdlib)
FROM python:3.11-slim

WORKDIR /app
COPY . /app

# No pip install needed: pyproject declares dependencies = []
EXPOSE 8001

# Dashboard mode (browse the cognitive graph at :8001/visuals/).
# For MCP stdio mode instead, run: docker run -i auramemory python3 core/gateway.py
CMD ["python3", "-m", "http.server", "8001"]

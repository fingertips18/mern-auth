# Stage 1: Build the frontend
FROM node:20-alpine AS frontend-builder
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm ci
COPY frontend ./
RUN npm run build

# Stage 2: Setup the backend
FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY backend ./backend
COPY --from=frontend-builder /app/frontend/dist ./frontend/dist

# Environment variables should be passed at runtime, but we can set defaults
ENV NODE_ENV=production
ENV PORT=5000

EXPOSE 5000
CMD ["node", "backend/index.js"]

# Better-Auth with Go JWT Implementation

This project demonstrates how to integrate [Better-Auth](https://www.better-auth.com/) with a Go backend using JWT (JSON Web Tokens) for authentication. It accompanies a video tutorial by Dreams of Code.

## Overview

This implementation showcases a modern authentication flow where:
- The frontend uses Better-Auth (a TypeScript authentication library) with Next.js
- The backend is built with Go and validates JWTs issued by Better-Auth
- Authentication state is shared between the Next.js app and Go API using JWT tokens

## Project Structure

### [Frontend Application](/app)
A Next.js application that implements:
- User registration and login flows using Better-Auth
- Session management with JWT tokens
- Protected routes and authentication status display
- Integration with PostgreSQL via Drizzle ORM

### [Go API Backend](/api)
A Go service that:
- Validates JWT tokens issued by Better-Auth
- Implements JWKS (JSON Web Key Set) endpoint for public key distribution
- Provides protected API endpoints that require valid authentication
- Includes middleware for JWT verification and request logging

## How It Works

1. **Authentication Flow**: Users authenticate through the Next.js frontend using Better-Auth, which handles user registration, login, and session management.

2. **JWT Generation**: Better-Auth generates JWT tokens signed with a private key when users authenticate successfully.

3. **Token Validation**: The Go backend validates these JWT tokens using the public key exposed through the JWKS endpoint, ensuring requests are from authenticated users.

4. **Shared Authentication**: Both the Next.js app and Go API can verify the same JWT tokens, enabling seamless authentication across different services.

## Getting Started

### Option 1: Manual Setup

Check the individual README files in each project directory for specific setup instructions:
- [Frontend Setup](/app/README.md)
- [Backend Setup](/api/README.md)

### Option 2: Docker Compose

Run all services with Docker Compose:

```bash
docker-compose up -d
```

This will start:
- PostgreSQL database on port 5432
- Next.js app on port 3000 (with automatic database migration)
- Go API on port 8080

Both app and API services support hot reload for development.

## Video Tutorial

This project accompanies a tutorial video by Dreams of Code explaining the implementation details and best practices for integrating Better-Auth with Go.
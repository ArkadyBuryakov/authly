FROM golang:1.24.2-alpine

WORKDIR /app

# Install air for hot reload
RUN go install github.com/air-verse/air@latest

# Copy go mod and sum files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy source code
COPY . .

EXPOSE 8080

# Use air for hot reload
CMD ["air", "-c", ".air.toml"]
#!/bin/sh
set -e

echo "Running database migration..."
bun run db:migrate

echo "Starting development server..."
bun run dev


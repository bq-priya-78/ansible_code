# Use an existing Docker image as a base
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the test files from the local machine to the container
COPY . .

# Install any dependencies or tools needed for testing
RUN apk add --no-cache \
    python3 \
    && pip3 install --upgrade pip \
    && pip3 install pytest

# Run tests using pytest
CMD ["pytest"]


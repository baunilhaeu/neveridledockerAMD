FROM alpine:latest

# Install dependencies
RUN apk update && apk add --no-cache wget

# Download script
RUN wget https://github.com/layou233/NeverIdle/releases/download/0.2.3/NeverIdle-linux-amd64 -O /usr/local/bin/NeverIdle

# Change file permission
RUN chmod 777 /usr/local/bin/NeverIdle

# Run the script with default arguments
CMD ["/bin/sh", "-c", "/usr/local/bin/NeverIdle -cp 0.15 -n 4h"]

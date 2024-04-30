# Use the official Dart SDK image as the base image
FROM dart:2.19-alpine AS build

# Set the working directory
WORKDIR /app

# Copy the pubspec files and fetch dependencies
COPY pubspec.yaml pubspec.lock ./
RUN dart pub get

# Copy the Flutter app source code
COPY . .

# Build the Flutter web app
RUN dart run flutter build web --web-renderer canvaskit

# Use the nginx:alpine image as the runtime image
FROM nginx:alpine

# Copy the built Flutter web app from the build stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose the default nginx port
EXPOSE 8080

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
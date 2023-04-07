# Use Official NodeJS base image
FROM node:18-alpine
# Copy application code from local to image
COPY . /app/
# Change the working directory in the image
WORKDIR /app
# Install only production dependencies.
RUN npm install --omit=dev
# Save command to start the Express app
CMD ["node", "./src/server.js"]

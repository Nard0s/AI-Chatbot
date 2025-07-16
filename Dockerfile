# Step 1: Use an official Node image
FROM node:20-alpine

# Step 2: Set working directory
WORKDIR /app

# Step 3: Install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy project files
COPY . .

# Step 5: Expose the Vite default port
EXPOSE 5173

# Step 6: Run dev server
CMD ["npm", "run", "dev", "--", "--host"]


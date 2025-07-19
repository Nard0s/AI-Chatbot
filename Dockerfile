FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

# Step 4: Copy project files
#  COPY . .
EXPOSE 5173

# CMD ["npm", "run", "dev", "--", "--host"]
CMD ["npm", "run", "dev"]
# Set BaseOs type
FROM node:10

# Set working Diorectory
WORKDIR /opt/quest

# Install NPM packages
COPY package.json ./
RUN npm install

# Copy application files
COPY bin ./bin
COPY src ./src

# Expose app ports and run app
EXPOSE 3000

CMD [ "node", "src/000.js" ]


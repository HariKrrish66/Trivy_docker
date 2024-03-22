#base image with Node.js pre-installed
FROM node:latest

#Set the working dir in the container
WORKDIR /app

#Copy package.json and package-lock.json to the container 
COPY package*.json ./

#INstall node.js dependencies
Run npm install 

#copy rest of the application files to the container
COPY . .

#EXpose the port 
EXPOSE 3000

#Command to run the app
CMD ["node", "app.js"] 
 

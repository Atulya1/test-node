# instruction for the image to create an image, and we will create a container from the image
FROM node
# directory where will want to place all this
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH
# copy the file to the main directory
COPY package*.json /usr/src/app
# run the command to install the dependencies
RUN npm install
# will will copy everything from the directory (everything) to the container
COPY . /usr/src/app
# expose the server port
EXPOSE 4000
# the command to run the application
CMD ["npm", "start"]
#!/bin/bash

echo "Moving on folder /opt/coffee/app"
cd /opt/coffee/app
echo "Installing dependancies"
npm install

echo "Starting application with start script in package.json"
exec npm start

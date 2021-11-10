#!/usr/bin/


#docker stop testimage

echo 'Starting.'

docker build -t angular-hero-image .
docker run -d -p 8080:80 --name angular-hero-container angular-hero-image

echo 'Done.'
echo "Deployed to: http://localhost:8080/"

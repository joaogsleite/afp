#!/bin/sh
docker login
docker build -t joaogsleite/afp .
docker tag joaogsleite/afp joaogsleite/afp:3.1.18
docker push joaogsleite/afp:3.1.18
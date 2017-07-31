#!/bin/bash

echo '### Building container... ###'
sudo docker-compose build

echo '### Starting container... ###'
sudo docker-compose up -d

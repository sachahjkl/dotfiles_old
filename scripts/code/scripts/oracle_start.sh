#!/bin/sh
sudo docker run -d -p 1521:1521 -p 8080:8080 traversn/tp-oracle-xe11g-bdd-ecole /start.sh

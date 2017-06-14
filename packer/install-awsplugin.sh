#!/bin/bash

cd /usr/share/elasticsearch/
bin/elasticsearch-plugin install discovery-ec2 --batch
bin/elasticsearch-plugin install repository-s3 --batch
bin/elasticsearch-plugin install x-pack --batch

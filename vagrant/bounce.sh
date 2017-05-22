#!/bin/bash

vagrant destroy -f
vagrant up --provider virtualbox
sleep 20
fly -t lite set-pipeline --config ../pipeline.yml --pipeline simple-app --non-interactive --load-vars-from ../credentials.yml -n
fly -t lite unpause-pipeline --pipeline simple-app